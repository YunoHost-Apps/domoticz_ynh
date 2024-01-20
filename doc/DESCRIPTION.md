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


The MQTT broker Mosquitto is integrated into the package and requires its own domain or subdomain. It's an optional setting: during install if you set the same domain as your main app domain, it won't be installed.
You may also install the [Mosquitto package](https://github.com/YunoHost-Apps/mosquitto_ynh) without using the one provided by domoticz_ynh.