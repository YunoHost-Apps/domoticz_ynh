<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# Domoticz YunoHost-erako

[![Integrazio maila](https://apps.yunohost.org/badge/integration/domoticz)](https://ci-apps.yunohost.org/ci/apps/domoticz/)
![Funtzionamendu egoera](https://apps.yunohost.org/badge/state/domoticz)
![Mantentze egoera](https://apps.yunohost.org/badge/maintained/domoticz)

[![Instalatu Domoticz YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=domoticz)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek Domoticz YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

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

**Paketatutako bertsioa:** 2024.6~ynh2

## Pantaila-argazkiak

![Domoticz(r)en pantaila-argazkia](./doc/screenshots/domoticz_Switches_screen.png)
![Domoticz(r)en pantaila-argazkia](./doc/screenshots/domoticz_floorplan_machineon.png)

## Dokumentazioa eta baliabideak

- Aplikazioaren webgune ofiziala: <https://domoticz.com/>
- Erabiltzaileen dokumentazio ofiziala: <https://www.domoticz.com/DomoticzManual.pdf>
- Administratzaileen dokumentazio ofiziala: <https://www.domoticz.com/wiki/Main_Page>
- Jatorrizko aplikazioaren kode-gordailua: <https://github.com/domoticz/domoticz>
- YunoHost Denda: <https://apps.yunohost.org/app/domoticz>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/domoticz_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/domoticz_ynh/tree/testing).

`testing` abarra probatzeko, ondorengoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/domoticz_ynh/tree/testing --debug
edo
sudo yunohost app upgrade domoticz -u https://github.com/YunoHost-Apps/domoticz_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>
