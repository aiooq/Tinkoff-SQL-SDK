package main

// Инициализируем библиотеки
import (
	"bytes"
	"database/sql"
	"encoding/json"
	"fmt"
	"io/ioutil"
	"log"
	"net/http"
	"os"
	"strings"
	"time"

	_ "github.com/mattn/go-sqlite3"
)

type Msec struct { // Переменная хранения таймера ожидания из БД
	msec int
}

type Dbtime struct { // Переменная хранения текущего времени БД
	dbtime int64
}

type Links struct { // Переменная для передачи информации о ссылке парсеру
	route_id int
	urn_id   int
	url      string
	method   string
	security int
	headers  string
	body     string
	tomer    int64
}

type Response struct { // Переменная для формирования строки для записи в БД
	route_id int
	urn_id   int
	time     int64
	code     int
	header   string
	body     string
}

// Инициализируем пути и имена
var path string = "./db/Tinkoff.sqlite" // Путь до файла БД
var pathQuery string = "sdk.sql"        // Путь до файла с запросами создания БД
var pathJson string = "input.json"      // Путь до файла с настройками БД

func CreateDBFile(path string) { // Создание папки и файла базы данных (пустого файла)
	os.Mkdir("db", 0777)
	file, err := os.Create(path)
	if err != nil {
		fmt.Println(err)
	}
	file.Close()
}

func ReadFile(pq string) (string, error) { // Чтение из файлов
	fContent, err := ioutil.ReadFile(pq)
	if err != nil {
		fmt.Println(err)
	}
	return string(fContent), nil
}

func CreateDB(path string, qry string) { // Выполнение скрипта запросов, для формирования БД
	db, err := sql.Open("sqlite3", path)
	if err != nil {
		fmt.Println(err)
	}
	defer db.Close()
	db.Exec(qry)
}

func ReadSleep() int { // Получение таймера ожидания из БД
	db, err := sql.Open("sqlite3", path)
	if err != nil {
		fmt.Println(err)
	}
	defer db.Close()
	result := db.QueryRow("SELECT msec FROM sleep")
	sleep := Msec{}
	err = result.Scan(&sleep.msec)
	if err != nil {
		fmt.Println(err)
	}
	log.Println("sleep...", sleep.msec, "msec")
	return sleep.msec
}

func ReadTimedb() int64 { // Получение текущего времени из БД
	db, err := sql.Open("sqlite3", path)
	if err != nil {
		fmt.Println(err)
	}
	defer db.Close()
	result := db.QueryRow("SELECT time FROM time_current")
	dbt := Dbtime{}
	err = result.Scan(&dbt.dbtime)
	if err != nil {
		fmt.Println(err)
	}
	log.Println("DB Time:", dbt.dbtime)
	return dbt.dbtime
}

func Chec_links(tomer int64) []Links { // Получение перечня ссылок на выполнения, и их атрибутов из БД
	db, err := sql.Open("sqlite3", path)
	if err != nil {
		fmt.Println(err)
	}
	defer db.Close()
	rows, err := db.Query("SELECT route_id, urn_id, url, method, security, headers, body FROM requests_on_timer")
	if err != nil {
		fmt.Println(err)
	}
	defer rows.Close()
	linkss := []Links{}
	for rows.Next() {
		l := Links{0, 0, "", "", 0, "", "", tomer}
		err := rows.Scan(&l.route_id, &l.urn_id, &l.url, &l.method, &l.security, &l.headers, &l.body)
		if err != nil {
			fmt.Println(err)
			continue
		}
		linkss = append(linkss, l)
	}
	return linkss
}

func getDataFaster(pack Links, c chan Response) { // Парсер post/get запросов
	var s []string
	var body = []byte(pack.body)
	var r *http.Request
	var er error

	if pack.headers != "" {
		s = strings.Split(pack.headers, "\r\n")
		s1 := strings.Split(s[0], ":")
		s2 := strings.Split(s[1], ":")
		s3 := strings.Split(s[2], ":")
		r, er = http.NewRequest(pack.method, pack.url, bytes.NewBuffer(body))
		if er != nil {
			log.Fatal(er)
		}
		r.Header.Set(s1[0], s1[1])
		r.Header.Add(s2[0], s2[1])
		r.Header.Add(s3[0], s3[1])
	} else {
		r, er = http.NewRequest(pack.method, pack.url, nil)
		if er != nil {
			log.Fatal(er)
		}
	}
	client := &http.Client{}
	res, err := client.Do(r)
	if err != nil {
		log.Fatal(err)
	}
	buf := new(bytes.Buffer)
	buf.ReadFrom(res.Body)
	sbody := buf.String()
	hd, _ := json.Marshal(res.Header)
	defer res.Body.Close()
	log.Println(pack.url, res.Status)
	c <- Response{pack.route_id, pack.urn_id, pack.tomer, res.StatusCode, string(hd), sbody}
}

func writeDB(data []Response) { // Запись результатов парсинга в БД
	db, err := sql.Open("sqlite3", path)
	if err != nil {
		log.Println(err)
	}
	defer db.Close()
	for _, l := range data {
		result, err := db.Exec("INSERT OR IGNORE INTO response(route_id, urn_id, time, code, header, body) VALUES($1, $2, $3, $4, $5, $6)", l.route_id, l.urn_id, l.time, l.code, l.header, l.body)
		if err != nil {
			log.Println(err)

		}
		result.RowsAffected()
	}
	log.Println("write to db complete")
}

func main() { // Выполнение основного алгоритма
	CreateDBFile(path)               // Создание каталога и пустого файла БД
	qryf, err := ReadFile(pathQuery) // Чтение файла скрипта создания структуры БД
	if err != nil {
		log.Println(err)
	}
	CreateDB(path, qryf) // Выполнение скрипта создания структуры БД

	jdat, err := ReadFile(pathJson) // Чтение файла настроек БД
	if err != nil {
		log.Println(err)
	}
	jqry := "UPDATE m_input\nSET value = json(' " + jdat + " ')\nWHERE name = 'inputJson';" // Запрос выполнения настроек БД из файла
	CreateDB(path, jqry)                                                                    // Выполнение скрипта настроек БД
	ch := make(chan Response)
	var data []Response
	for { // Непрерывный цикл
		data = nil
		in := 0
		msec := ReadSleep()                                // Получение времени ожидания из БД
		time.Sleep(time.Duration(msec) * time.Millisecond) // Ожидание полученного времени в мс
		tomer := ReadTimedb()                              // Получение текущего времени из БД
		if tomer == 0 {                                    // Если текуще время БД равно 0, сообщаем об ошибке и завершаем работу цикла
			log.Println("DB is not correct, check correct a file: " + pathQuery)
			break
		}
		CL := Chec_links(tomer) // Получение списка(среза) с сылками и их атрибутами
		for _, l := range CL {  // Построчный проход по срезу
			in++
			go getDataFaster(l, ch) // И запуск горутин(потоков), выполняющих парсинг http запорсов
		}
		for i := 0; i < in; i++ {
			data = append(data, <-ch) // Сбор результатов работы горутин(потоков)
		}
		writeDB(data) // Запись в БД
	}
	log.Println("End of program") //сообщение о завершении программы
}
