<!--
Важно: этот README был автоматически сгенерирован <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Он НЕ ДОЛЖЕН редактироваться вручную.
-->

# Domoticz для YunoHost

[![Уровень интеграции](https://apps.yunohost.org/badge/integration/domoticz)](https://ci-apps.yunohost.org/ci/apps/domoticz/)
![Состояние работы](https://apps.yunohost.org/badge/state/domoticz)
![Состояние сопровождения](https://apps.yunohost.org/badge/maintained/domoticz)

[![Установите Domoticz с YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=domoticz)

*[Прочтите этот README на других языках.](./ALL_README.md)*

> *Этот пакет позволяет Вам установить Domoticz быстро и просто на YunoHost-сервер.*  
> *Если у Вас нет YunoHost, пожалуйста, посмотрите [инструкцию](https://yunohost.org/install), чтобы узнать, как установить его.*

## Обзор

Domoticz is a Home Automation system design to control various devices and receive input from various sensors.
For example this system can be used with: 

* Light switches
* Door sensors
* Doorbells
* Security devices
* Weather sensors like: UV/Rain/Wind Meters
* Temperature Sensors
* Pulse Meters
* Voltage / AD Meters
* And more...


The MQTT broker Mosquitto is integrated into the package and requires its own domain or subdomain. It's an optional setting.
You may also install the [Mosquitto package](https://github.com/YunoHost-Apps/mosquitto_ynh) without using the one provided by domoticz_ynh.

**Поставляемая версия:** 2024.6~ynh2

## Снимки экрана

![Снимок экрана Domoticz](./doc/screenshots/domoticz_Switches_screen.png)
![Снимок экрана Domoticz](./doc/screenshots/domoticz_floorplan_machineon.png)

## Документация и ресурсы

- Официальный веб-сайт приложения: <https://domoticz.com/>
- Официальная документация пользователя: <https://www.domoticz.com/DomoticzManual.pdf>
- Официальная документация администратора: <https://www.domoticz.com/wiki/Main_Page>
- Репозиторий кода главной ветки приложения: <https://github.com/domoticz/domoticz>
- Магазин YunoHost: <https://apps.yunohost.org/app/domoticz>
- Сообщите об ошибке: <https://github.com/YunoHost-Apps/domoticz_ynh/issues>

## Информация для разработчиков

Пришлите Ваш запрос на слияние в [ветку `testing`](https://github.com/YunoHost-Apps/domoticz_ynh/tree/testing).

Чтобы попробовать ветку `testing`, пожалуйста, сделайте что-то вроде этого:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/domoticz_ynh/tree/testing --debug
или
sudo yunohost app upgrade domoticz -u https://github.com/YunoHost-Apps/domoticz_ynh/tree/testing --debug
```

**Больше информации о пакетировании приложений:** <https://yunohost.org/packaging_apps>
