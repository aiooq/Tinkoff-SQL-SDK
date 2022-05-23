# Инициализируем библиотеки
import time
from io import open
from  threading import Thread
from requests import request
from sqlite import *

# Инициализируем пути и имена
db_path = 'db/'
db_name = 'Tinkoff.sqlite'
db = Database(db_path, db_name)

# Функция для работы с файлами
def readfile(path, filename, codepage):
    with open(path+filename, encoding=codepage) as file:
        return file.read()

# Инициализируем базу
try:
    file_sql = readfile('db/','sdk.sql', 'ANSI')
    db.runScript(file_sql)
except:
    print('file: sdk.sql has a problem')

# Инициализируем параметры базы
try: 
    file_json = readfile('db/','input.json', 'utf-8')
    query = "UPDATE m_input SET value = json('{}') WHERE name = 'inputJson'".format(file_json)
    db.runScript(query)
except:
    print('file: input.json has a problem')

# Глобальный список данных для БД
globalist = []

# Инициализируем запросы
sql_select_sleep='SELECT msec FROM sleep'
sql_select_time='SELECT time FROM time_current'
sql_select_links='SELECT route_id, urn_id, url, method, security, headers, body FROM requests_on_timer'
sql_insert_response='INSERT OR IGNORE INTO response(route_id, urn_id, time, code, header, body) VALUES(?,?,?,?,?,?)'

# Функция получение ожидания
def get_sleep():
    sleep = db.run(sql_select_sleep).fetchall()[0][0]/1000
    print('sleep: {} seconds'.format(sleep))
    return sleep

class Program():
    # Функция проверки активности потоков
    def threads_check(self, threads):
        for item in threads:
            if item.is_alive():
                return True
        return False
    
    # Основная функция программы
    def run(self):
        global globalist
        threads = []
        # Получаем текущее время от БД
        time = db.run(sql_select_time).fetchall()[0][0]
        # Получаем запросы, которые нужно выполнить от БД
        for item in db.run(sql_select_links):
            # Инициализируем запросы по потокам
            response = Response(
                item[0], 
                item[1], 
                item[2], 
                item[3], 
                item[4], 
                item[5], 
                item[6],
                time)
            threads.append(response)
        
        # Запускаем потоки
        for item in threads:
            item.start()

        # Проверка на работающие потоки
        while self.threads_check(threads):
            pass

        # Записываем результат выполнения запросов в БД
        db.runmany(sql_insert_response, globalist)
        # Обновляем список результатов запросов
        globalist = []

# Создаем класс запросов-ответов, наследуемся от потоков
class Response(Thread):
    def __init__(self, route_id, urn_id, url, method, security, headers, body, time):
        super().__init__()
        self.url = url
        self.route_id = route_id
        self.urn_id = urn_id
        self.time = time
        self.method = method
        self.security = security
        self.headers = headers
        self.body = body
        self.name = 'Thread: {}{}'.format(route_id,urn_id)
        self.daemon = True

    # Выполнение потока
    def run(self):
        if self.headers != '':
            # Формируем заголовки для запросов
            self.headers = dict(header.split(':') for header in self.headers.split('\r\n'))
            # Выполняем запрос с заголовками
            maindata = request(
                self.method, 
                self.url, 
                headers=self.headers, 
                data=self.body)
        else:
            # Выполняем запрос без заголовков
            maindata = request(self.method, self.url)

        # Формируем данные для БД
        globalist.append([
            self.route_id, 
            self.urn_id, 
            self.time, 
            maindata.status_code, 
            str(maindata.headers), 
            str(maindata.text)])
        print('[{}] {}'.format(maindata.status_code,self.url))

# Основной цикл программы
while True: 
    try:
        # Получаем время бездействия
        time.sleep(get_sleep())
        # Запускаем выполнение
        Program().run()
    except Exception as e:
        print('Error: {}, program ending...'.format(e))
        break