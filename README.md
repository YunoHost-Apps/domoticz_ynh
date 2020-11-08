# Domoticz for YunoHost

[![Integration level](https://dash.yunohost.org/integration/domoticz.svg)](https://dash.yunohost.org/appci/app/domoticz) ![](https://ci-apps.yunohost.org/ci/badges/domoticz.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/domoticz.maintain.svg)  
[![Install domoticz with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=domoticz)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install domoticz quickly and simply on a YunoHost server.  
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview
Domoticz is a Home Automation system design to control various devices and receive input from various sensors.
For example this system can be used with: 

-Light switches

-Door sensors

-Doorbells

-Security devices

-Weather sensors like: UV/Rain/Wind Meters

-Temperature Sensors

-Pulse Meters

-Voltage / AD Meters

-And more ...


**Shipped version:** Always the last stable one. The last compiled version is retrieved from [this directory](https://releases.domoticz.com/releases/?dir=./beta)
Once installed, **updates from the uptream app are managed from within the app.**. Yunohost upgrade script will only upgrade the Yunohost package. 


## Configuration

All the configuration of the app take place inside the app itself.


## Documentation

 * Official documentation: Please use the [wiki](https://www.domoticz.com/wiki/Main_Page) and [user manual](https://www.domoticz.com/DomoticzManual.pdf) for further info.
 * YunoHost documentation: If specific documentation is needed, feel free to contribute.

## YunoHost specific features

#### Supported architectures

Both ARM and x86 architectures should be supported.
Compiled sources are directly downloaded by the package.

## Limitations

* No user management nor LDAP integration This function is [not planned to be implemented into the app](https://github.com/domoticz/domoticz/issues/838), hence it's not planned into the package neither.
* Backup cannot be restored on a different machine type (arm, x86...) as compiled sources are different


**More info on the documentation page:**  
https://yunohost.org/packaging_apps

## Links

 * Report a bug: https://github.com/Krakinou/domoticz_ynh/issues
 * App website: https://domoticz.com/
 * Upstream app repository: https://github.com/domoticz/domoticz
 * YunoHost website: https://yunohost.org/

---

Developer info
----------------

**Only if you want to use a testing branch for coding, instead of merging directly into master.**
Please send your pull request to the [testing branch](https://github.com/Krakinou/domoticz_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/Krakinou/domoticz_ynh/tree/testing --debug
or
sudo yunohost app upgrade domoticz -u https://github.com/Krakinou/domoticz_ynh/tree/testing --debug
```
