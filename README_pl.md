<!--
To README zostało automatycznie wygenerowane przez <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Nie powinno być ono edytowane ręcznie.
-->

# Domoticz dla YunoHost

[![Poziom integracji](https://apps.yunohost.org/badge/integration/domoticz)](https://ci-apps.yunohost.org/ci/apps/domoticz/)
![Status działania](https://apps.yunohost.org/badge/state/domoticz)
![Status utrzymania](https://apps.yunohost.org/badge/maintained/domoticz)

[![Zainstaluj Domoticz z YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=domoticz)

*[Przeczytaj plik README w innym języku.](./ALL_README.md)*

> *Ta aplikacja pozwala na szybką i prostą instalację Domoticz na serwerze YunoHost.*  
> *Jeżeli nie masz YunoHost zapoznaj się z [poradnikiem](https://yunohost.org/install) instalacji.*

## Przegląd

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

**Dostarczona wersja:** 2024.6~ynh2

## Zrzuty ekranu

![Zrzut ekranu z Domoticz](./doc/screenshots/domoticz_Switches_screen.png)
![Zrzut ekranu z Domoticz](./doc/screenshots/domoticz_floorplan_machineon.png)

## Dokumentacja i zasoby

- Oficjalna strona aplikacji: <https://domoticz.com/>
- Oficjalna dokumentacja: <https://www.domoticz.com/DomoticzManual.pdf>
- Oficjalna dokumentacja dla administratora: <https://www.domoticz.com/wiki/Main_Page>
- Repozytorium z kodem źródłowym: <https://github.com/domoticz/domoticz>
- Sklep YunoHost: <https://apps.yunohost.org/app/domoticz>
- Zgłaszanie błędów: <https://github.com/YunoHost-Apps/domoticz_ynh/issues>

## Informacje od twórców

Wyślij swój pull request do [gałęzi `testing`](https://github.com/YunoHost-Apps/domoticz_ynh/tree/testing).

Aby wypróbować gałąź `testing` postępuj zgodnie z instrukcjami:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/domoticz_ynh/tree/testing --debug
lub
sudo yunohost app upgrade domoticz -u https://github.com/YunoHost-Apps/domoticz_ynh/tree/testing --debug
```

**Więcej informacji o tworzeniu paczek aplikacji:** <https://yunohost.org/packaging_apps>
