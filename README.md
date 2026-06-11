# Домашнее задание №3. Docker. Bash
Проект расчитан только на работу в GitHub Codespaces.

## Команды (выполнять в корне проекта)
* `./run.sh build_generator` собрать образ генератора
* `./run.sh run_generator` запустить генератор (результат в data)
* `./run.sh create_local_data` генератор с результатом в Local_data
* `./run.sh build_reporter` собрать образ аналитика
* `./run.sh run_reporter` запустить аналитик (отчёт в data)
* `./run.sh structure` вывод структуры проекта
* `./run.sh clear_data` очистить data
* `./run.sh inside_generator` содержимое data из контейнера-генератора
* `./run.sh inside_reporter` содержимое data из контейнера-аналитика
* `./run.sh report_server` запустить сервер для data на порту 8080 (имя контейнера - report_server)
* `./run.sh stop_report_server` остановить и удалить контейнер сервера

## Инструкция

Выполните:
```bash
./run.sh build_generator
./run.sh build_reporter
./run.sh run_generator
./run.sh run_reporter
./run.sh report_server
```

Перейдите по ссылке [http://127.0.0.1/report.html](http://127.0.0.1/report.html)

Остановите сервер:
```bash
./run.sh stop_report_server
```

## Источники
* [Конструкция case](https://pubs.opengroup.org/onlinepubs/9799919799/utilities/V3_chap02.html#tag_19_09_04_05)
* [Образ httpd](https://hub.docker.com/_/httpd)
* [Спецификация devcontainer.json](https://containers.dev/implementors/json_reference)
* [Образ docker:cli](https://hub.docker.com/_/docker#dockerversion-cli)