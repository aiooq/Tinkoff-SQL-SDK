// Подключаем библиотеки
const request = require('request-promise')
const axios = require('axios')
const { response } = require('express')
const sqlite3 = require('sqlite3').verbose()
const path = require("path")
const fs = require('fs')

// Инициализируем пути до файлов
const appDir = path.dirname(__filename)
const pathToDataBase = `${appDir}/db/Tinkoff.sqlite`
const pathToCreateSQL = `${appDir}/db/sdk.sql`
const pathToInputJson = `${appDir}/db/input.json`

// Инициализируем запросы
try {
    var sqlCreate = fs.readFileSync(pathToCreateSQL, 'utf8')
    var jsonInput = fs.readFileSync(pathToInputJson, 'utf8')
    var sqlUpdateInit = `UPDATE m_input SET value = json('${jsonInput}') WHERE name = "inputJson"`.replaceAll('\r\n','')
} catch (err) {
     console.log(err.message)
}
const sqlSelectSleep = 'SELECT msec FROM sleep'
const sqlSelectTime = 'SELECT time FROM time_current'
const sqlSelectLinks = 'SELECT route_id, urn_id, url, method, security, headers, body FROM requests_on_timer'
const sqlInsertResponses = 'INSERT OR IGNORE INTO response(route_id, urn_id, time, code, header, body) VALUES(?,?,?,?,?,?)'

// Функция запроса одной строки из БД
function getRow(query, callback){
    try {
    let db = new sqlite3.Database(pathToDataBase)
    db.get(query, (err, row) => {
            if (err){console.log(err.message); throw err}
            db.close()
            callback(row)
        })
    // для непредвиденных ситуаций
    } catch (err) {console.log(err); throw err}
}
// Функция запроса строк из БД
function getRows(query, callback){
    try {
    let db = new sqlite3.Database(pathToDataBase)
    db.all(query, (err, rows) => {
        if (err){console.log(err.message); throw err}
            db.close()
            callback(rows)
        })
    // для непредвиденных ситуаций
    } catch (err) {console.log(err); throw err}
}
// Функция отправки и получения данных
function parsing(link, time, callback) {
    let headersJson = link.headers==""?'{}':
    `{"${link.headers.replaceAll('\r\n','","').replaceAll(':','":"')}"}`
    return axios({
        method: link.method, 
        url: link.url,
        headers: JSON.parse(headersJson),
        data: link.body,
        timeout: 5000
        })
        .then(response => {
            callback(parsingResult(link, time, response))
        })
        .catch((err) => {
            callback(parsingResult(link, time, err.response))
        })
}
// Функция формирования результата и логирование
function parsingResult(link, time, response) {
    console.log(`[${response.status}] ${link.url}`)
    return [
        link.route_id, 
        link.urn_id, 
        time, 
        response.status, 
        JSON.stringify(response.headers), 
        JSON.stringify(response.data)
    ]
}
// Функция записи в БД
function run(query, responses) {
    try {
        let db = new sqlite3.Database(pathToDataBase)
        db.parallelize(() => {
            // Подготавливаем запрос вставки данных
            let stmt = db.prepare(query),
            // Список промисов для ожидания
                promises = []
            // Перебираем ответы    
            responses.forEach(response => {
                // Формируем промисы
                promises.push(new Promise((resolve,reject) => {
                    // Запускаем вставку в БД
                    stmt.run(response, (err) => {
                        // Формируем результат
                        if (err) {
                            console.log(err.message) 
                            reject(err)
                        }
                        else resolve()
                    })
                }))
            })

            // Ожидаем завершения всех запросов вставки
            Promise.allSettled(promises)
            .finally(() => {
                stmt.finalize()
                db.close()
                // Продолжение работы программы
                program()
            })
        })
    // для непредвиденных ситуаций
    } catch (err) {console.log(err); throw err}
}
// Функция создания и инициализации БД
function сreateInitProgram(){
    try {
    if(!sqlCreate || !jsonInput)
        return setTimeout(function(){console.log('exit')}, 5000)

    let db = new sqlite3.Database(pathToDataBase)
    db.exec(sqlCreate, (err) => {
        if (err){console.log(err.message)}
        // Инициализируем
        let db2 = new sqlite3.Database(pathToDataBase)
        db2.exec(sqlUpdateInit, (err) => {
            if (err){console.log(err.message)}
            db.close()
            db2.close()
            // Запускаем программу
            program()
        })
    })
    } catch (err) {console.log(err); throw err}
}
// Основной цикл программы
function program() {
    // Получаем мсек ожидания до новых запросов
    getRow(sqlSelectSleep, (row) => {
        console.log(`sleep: ${row.msec}`)
        // Запускаем основной цикл, после ожидания
        setTimeout(main, row.msec)
    })
}
// Основная функция
function main(){
    try {
    // Получаем текущее время от БД
    getRow(sqlSelectTime, (row) => {
        // Получаем список текущих запросов от БД
        getRows(sqlSelectLinks, (links) => {
            // Список для получения ответов
            let responses = [],
            // Список промисов = списку ответов (для ожидания)
                promises = []
            // Перебираем запросы и выполняем
            links.forEach((link) => {
                // Формируем список промисов
                promises.push(
                    // Выполняем запрос
                    parsing(link, 
                        // Устанавливаем единое начальное время, 
                        // чтобы исключить минимальное операционное смещение
                        row.time, 
                        (response) => {
                            // Формируем список ответов
                            responses.push(response)
                        }))
            })

            // Ожидаем завершения всех запросов
            Promise.allSettled(promises)
            // Записываем результаты в БД, пачкой
            .then(() => run(sqlInsertResponses,responses))
            // Продолжение работы программы
            .catch(() => program())
        })
    })
    // для непредвиденных ситуаций
    } catch (err) {console.log(err); throw err}
}

// Создаем и инициализируем БД, запускаем программу
сreateInitProgram()