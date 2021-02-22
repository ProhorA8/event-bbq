# BBQ

## Описание

Приложение, с помощью которого легко создать любое событие и позвать на него всех друзей!   
Пользователь создает событие с датой проведения, описанием, местоположением на карте, после чего на него могут подписаться другие пользователи!  
В созданном событии можно выкладывать фотографии и оставлять комментарии!

В приложении реализован функционал -  
* Авторизация, аутентификация - ```Devise, Pundit``` 
* Загрузка файлов - ```Carrierwave``` 
* Отправка почты - ```ActionMailer, SendGrid API```  
* Верстка - ```Bootstrap4```  

## Preview

https://events-to-bbq.herokuapp.com

## Установка

Для корректной работы приложения на Вашем компьютере должны быть установлены Ruby 2.7.1 и Rails 6.1.1.

```sh
$ git clone https://github.com/ProhorA8/event-bbq.git
$ cd ./bbq
$ bundle install --without production
$ yarn install --check-files
$ cp config/databese.yml.example config/databese.yml
$ rails db:migrate
```
Для корректной работы отправки почты в фоновом режиме Вам нужно будет установить [Redis](https://www.digitalocean.com/community/tutorials/how-to-install-and-secure-redis-on-ubuntu-20-04-ru)

## Дополнительные функции

Вы можете использовать в приложении [Яндекс Карты](https://yandex.ru/dev/maps/)
Для этого нужно получить соответствующие ключ.

> :warning: **ВАЖНО!**: Не храните файл ```master.key``` в публичных репозиториях!

## Запуск
1 окно терминала: ```$ bin/webpack-dev-server```   
2 окно терминала: ```$ bundle exec rails s```  
3 окно терминала: ```$ QUEUE=bbq* bundle exec rake environment resque:work```  (Если Вы установили и запустили сервер ```Redis```) 

Приложение находится по адресу 
```sh
http://localhost:3000/
```
