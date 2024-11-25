<!--
NOTA: Este README foi creado automáticamente por <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
NON debe editarse manualmente.
-->

# Domoticz para YunoHost

[![Nivel de integración](https://apps.yunohost.org/badge/integration/domoticz)](https://ci-apps.yunohost.org/ci/apps/domoticz/)
![Estado de funcionamento](https://apps.yunohost.org/badge/state/domoticz)
![Estado de mantemento](https://apps.yunohost.org/badge/maintained/domoticz)

[![Instalar Domoticz con YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=domoticz)

*[Le este README en outros idiomas.](./ALL_README.md)*

> *Este paquete permíteche instalar Domoticz de xeito rápido e doado nun servidor YunoHost.*  
> *Se non usas YunoHost, le a [documentación](https://yunohost.org/install) para saber como instalalo.*

## Vista xeral

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

**Versión proporcionada:** 2024.6~ynh2

## Capturas de pantalla

![Captura de pantalla de Domoticz](./doc/screenshots/domoticz_Switches_screen.png)
![Captura de pantalla de Domoticz](./doc/screenshots/domoticz_floorplan_machineon.png)

## Documentación e recursos

- Web oficial da app: <https://domoticz.com/>
- Documentación oficial para usuarias: <https://www.domoticz.com/DomoticzManual.pdf>
- Documentación oficial para admin: <https://www.domoticz.com/wiki/Main_Page>
- Repositorio de orixe do código: <https://github.com/domoticz/domoticz>
- Tenda YunoHost: <https://apps.yunohost.org/app/domoticz>
- Informar dun problema: <https://github.com/YunoHost-Apps/domoticz_ynh/issues>

## Info de desenvolvemento

Envía a túa colaboración á [rama `testing`](https://github.com/YunoHost-Apps/domoticz_ynh/tree/testing).

Para probar a rama `testing`, procede deste xeito:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/domoticz_ynh/tree/testing --debug
ou
sudo yunohost app upgrade domoticz -u https://github.com/YunoHost-Apps/domoticz_ynh/tree/testing --debug
```

**Máis info sobre o empaquetado da app:** <https://yunohost.org/packaging_apps>
