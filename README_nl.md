<!--
NB: Deze README is automatisch gegenereerd door <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Hij mag NIET handmatig aangepast worden.
-->

# Domoticz voor Yunohost

[![Integratieniveau](https://apps.yunohost.org/badge/integration/domoticz)](https://ci-apps.yunohost.org/ci/apps/domoticz/)
![Mate van functioneren](https://apps.yunohost.org/badge/state/domoticz)
![Onderhoudsstatus](https://apps.yunohost.org/badge/maintained/domoticz)

[![Domoticz met Yunohost installeren](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=domoticz)

*[Deze README in een andere taal lezen.](./ALL_README.md)*

> *Met dit pakket kun je Domoticz snel en eenvoudig op een YunoHost-server installeren.*  
> *Als je nog geen YunoHost hebt, lees dan [de installatiehandleiding](https://yunohost.org/install), om te zien hoe je 'm installeert.*

## Overzicht

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

**Geleverde versie:** 2024.6~ynh2

## Schermafdrukken

![Schermafdrukken van Domoticz](./doc/screenshots/domoticz_Switches_screen.png)
![Schermafdrukken van Domoticz](./doc/screenshots/domoticz_floorplan_machineon.png)

## Documentatie en bronnen

- Officiele website van de app: <https://domoticz.com/>
- Officiele gebruikersdocumentatie: <https://www.domoticz.com/DomoticzManual.pdf>
- Officiele beheerdersdocumentatie: <https://www.domoticz.com/wiki/Main_Page>
- Upstream app codedepot: <https://github.com/domoticz/domoticz>
- YunoHost-store: <https://apps.yunohost.org/app/domoticz>
- Meld een bug: <https://github.com/YunoHost-Apps/domoticz_ynh/issues>

## Ontwikkelaarsinformatie

Stuur je pull request alsjeblieft naar de [`testing`-branch](https://github.com/YunoHost-Apps/domoticz_ynh/tree/testing).

Om de `testing`-branch uit te proberen, ga als volgt te werk:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/domoticz_ynh/tree/testing --debug
of
sudo yunohost app upgrade domoticz -u https://github.com/YunoHost-Apps/domoticz_ynh/tree/testing --debug
```

**Verdere informatie over app-packaging:** <https://yunohost.org/packaging_apps>
