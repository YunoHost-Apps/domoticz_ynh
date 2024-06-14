<!--
Este archivo README esta generado automaticamente<https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
No se debe editar a mano.
-->

# Domoticz para Yunohost

[![Nivel de integración](https://dash.yunohost.org/integration/domoticz.svg)](https://dash.yunohost.org/appci/app/domoticz) ![Estado funcional](https://ci-apps.yunohost.org/ci/badges/domoticz.status.svg) ![Estado En Mantención](https://ci-apps.yunohost.org/ci/badges/domoticz.maintain.svg)

[![Instalar Domoticz con Yunhost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=domoticz)

*[Leer este README en otros idiomas.](./ALL_README.md)*

> *Este paquete le permite instalarDomoticz rapidamente y simplement en un servidor YunoHost.*  
> *Si no tiene YunoHost, visita [the guide](https://yunohost.org/install) para aprender como instalarla.*

## Descripción general

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

**Versión actual:** 2024.4~ynh1

## Capturas

![Captura de Domoticz](./doc/screenshots/domoticz_Switches_screen.png)
![Captura de Domoticz](./doc/screenshots/domoticz_floorplan_machineon.png)

## Documentaciones y recursos

- Sitio web oficial: <https://domoticz.com/>
- Documentación usuario oficial: <https://www.domoticz.com/DomoticzManual.pdf>
- Documentación administrador oficial: <https://www.domoticz.com/wiki/Main_Page>
- Repositorio del código fuente oficial de la aplicación : <https://github.com/domoticz/domoticz>
- Catálogo YunoHost: <https://apps.yunohost.org/app/domoticz>
- Reportar un error: <https://github.com/YunoHost-Apps/domoticz_ynh/issues>

## Información para desarrolladores

Por favor enviar sus correcciones a la [`branch testing`](https://github.com/YunoHost-Apps/domoticz_ynh/tree/testing

Para probar la rama `testing`, sigue asÍ:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/domoticz_ynh/tree/testing --debug
o
sudo yunohost app upgrade domoticz -u https://github.com/YunoHost-Apps/domoticz_ynh/tree/testing --debug
```

**Mas informaciones sobre el empaquetado de aplicaciones:** <https://yunohost.org/packaging_apps>
