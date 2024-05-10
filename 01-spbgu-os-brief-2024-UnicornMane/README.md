[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/Vac_xOXX)
# 01-os-brief-template

Репозиторий содержит шаблон bash-скрипта, собирающего несколько сведений об установленном дистрибутиве и при зауске по умолчанию уже выводит текст без корректно заполненных данных. Глобальная задача: добиться корректного вывода. Например, для Fedora 33 и моего рабочего ноутбука он таков (у вас будет отличаться)

```
Distributive name: Fedora
Distributive version: 33
Kernel version: 5.14.18-100.fc33.x86_64
Total RAM: 7,5Gi
Used root space: 39G
```

Язык скрипта - стандартный для Linux-подобных ОС - bash, в ходе выполнения работы нужно:
* Создать ветку _fill-values_
* Добиться вызовом нужных команд в первых строках корректного вывода для вашей ОС
* Добавить в ветку файл _result_ с выводом скрипта у вас
* Закоммитить изменения в ветку
* Запросить Pull Request

# Подсказки
## Команды, которые скорее всего понадобятся
Цели можно достичь различными способами, в том числе таким набором команд:
* lsb_release
* uname
* free
* df

Если какой-то команды нет по умолчанию в вашем дистрибутиве - можете её установить, например для lsb_release и Fedora: `sudo dnf install redhat-lsb-core`

## Ключи запуска команд
Нужный вывод, или близкий к нужному, можно получить в том числе за счёт использования параметров команд, которые можно получить почитав инструкцию, например так `man df`

## Манипуляции над строками в конвейере
Для достижения нужного результата можно использовать команды манипуляции над строками, которые писать последовательно в одной строке в виде конвейера (через символ "|"). Например, можно сделать так (выполните строки последовательно в командной строке / консоли):

```
echo -e "Need to get only value after : on the second string\n Value: 345"
echo -e "Need to get only value after : on the second string\n Value: 345" | grep Value
echo -e "Need to get only value after : on the second string\n Value: 345" | grep Value | cut -d ':' -f 2
echo -e "Need to get only value after : on the second string\n Value: 345" | grep Value | cut -d ':' -f 2 | xargs
```
