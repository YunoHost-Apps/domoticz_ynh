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
* And more ...


**Shipped version:** Always the last stable one. The last compiled version is retrieved from [this directory](https://releases.domoticz.com/releases/?dir=./release) during install.
Once installed, **updates from the uptream app are managed from within the app**. Yunohost upgrade script will only upgrade the Yunohost package. 

The MQTT broker mosquitto is integrated into the package. It requires its own domain or subdomain. It's an optional setting: during install if you set the same domaine as your main app domain, it won't be installed.