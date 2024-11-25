<!--
N.B.: This README was automatically generated by <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
It shall NOT be edited by hand.
-->

# Domoticz for YunoHost

[![Integration level](https://apps.yunohost.org/badge/integration/domoticz)](https://ci-apps.yunohost.org/ci/apps/domoticz/)
![Working status](https://apps.yunohost.org/badge/state/domoticz)
![Maintenance status](https://apps.yunohost.org/badge/maintained/domoticz)

[![Install Domoticz with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=domoticz)

*[Read this README in other languages.](./ALL_README.md)*

> *This package allows you to install Domoticz quickly and simply on a YunoHost server.*  
> *If you don't have YunoHost, please consult [the guide](https://yunohost.org/install) to learn how to install it.*

## Overview

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

**Shipped version:** 2024.6~ynh2

## Screenshots

![Screenshot of Domoticz](./doc/screenshots/domoticz_Switches_screen.png)
![Screenshot of Domoticz](./doc/screenshots/domoticz_floorplan_machineon.png)

## Documentation and resources

- Official app website: <https://domoticz.com/>
- Official user documentation: <https://www.domoticz.com/DomoticzManual.pdf>
- Official admin documentation: <https://www.domoticz.com/wiki/Main_Page>
- Upstream app code repository: <https://github.com/domoticz/domoticz>
- YunoHost Store: <https://apps.yunohost.org/app/domoticz>
- Report a bug: <https://github.com/YunoHost-Apps/domoticz_ynh/issues>

## Developer info

Please send your pull request to the [`testing` branch](https://github.com/YunoHost-Apps/domoticz_ynh/tree/testing).

To try the `testing` branch, please proceed like that:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/domoticz_ynh/tree/testing --debug
or
sudo yunohost app upgrade domoticz -u https://github.com/YunoHost-Apps/domoticz_ynh/tree/testing --debug
```

**More info regarding app packaging:** <https://yunohost.org/packaging_apps>
