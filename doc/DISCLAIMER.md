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


**Shipped version:** Always the last stable one. The last compiled version is retrieved from [this directory](https://releases.domoticz.com/releases/?dir=./beta) during install
Once installed, **updates from the uptream app are managed from within the app.**. Yunohost upgrade script will only upgrade the Yunohost package. 

The MQTT broker mosquitto is integrated into the package. It requires its own domain or subdomain. It's an optional setting: during install if you set the same domaine as your main app domain, it won't be installed.

## Configuration

### Broker Mosquitto

During installation, a [MQTT](https://en.wikipedia.org/wiki/MQTT) broker is installed at the same time as Domoticz. The broker is Mosquitto with documentation available [here](https://mosquitto.org/). The installed version is the one from the official project repo and not from Debian ones.
This broker requires a dedicated domain or subdomain to work (ex : mqtt.your.domain.tld) : creating this domain prior installation is a prerequisite

####Use

To use mosquitto, you need to customize the communication between domoticz and the broker by following the [domoticz documentation](https://www.domoticz.com/wiki/MQTT#Installing_Mosquitto), part *Add hardware "MQTT Client Gateway"*.
User and password are automatically generated during installation, you may retrieve them with
````
sudo yunohost app setting domoticz mqtt_user
sudo yunohost app setting domoticz mqtt_pwd
````
You can then publish on a device on domoticz with following syntax:
````
mosquitto_pub -u *user* -P *password* -h mqtt.your.domain.tld -p 443 -t 'domoticz/in' -m '{ "idx" : 1, "nvalue" : 0, "svalue" : "25.0" }'
````
In the same way, you may subscribe to a topic with
````
mosquitto_sub -u *user* -P *password* -h mqtt.your.domain.tld -p 443 -t 'domoticz/out'
````

#### Upgrade from version without mosquitto
If you have package ynh3 or below, mosquitto is not installed by default.
If you have chosen to not set a domain during initial installation also.
So, if you need to activate mosquitto in retrospect, do following actions:
1/ Create a domain or a subdomain (for example : 'mqtt.your.domain.tld')
2/ Connect to your server in command line 
3/ Type following command : `yunohost app setting domoticz mqtt_domain -v mqtt.your.domain.tld`
4/ Upgrade domoticz to last package.
If you're already on the last package version, use the following command : `yunohost app upgrade domoticz --force`

## Configuration

### Sensors, language and this kind of stuff
Main configuration of the app take place inside the app itself.

### Access and API
By default, access for the [JSON API](https://www.domoticz.com/wiki/Domoticz_API/JSON_URL's) is allowed on following path `/yourdomain.tld/api_/domoticzpath`.
So if you access domoticz via https://mydomainname.tld/domoticz, use the following webpath for the api : `/mydomainname.tld/api_/domoticz/json.htm?yourapicommand`

By default, only sensor updates and switch toogle are authorized. To authorized a new command, you have (for now) to manually update the nginx config file :
````
sudo nano /etc/nginx/conf.d/yourdomain.tld.d/domoticz.conf
````
Then edit the following block by adding the regex of the command you want to allow:
````
  #set the list of authorized json command here in regex format
  #you may retrieve the command from https://www.domoticz.com/wiki/Domoticz_API/JSON_URL's
  #By default, sensors updates and toggle switch are authorized
  if ( $args ~* type=command&param=udevice&idx=[0-9]*&nvalue=[0-9]*&svalue=.*$|type=command&param=switchlight&idx=[0-9]*&switchcmd=Toggle$) {
    set $api "1";
    }
````
For example, to add the json command to retrieve the status of a device (/json.htm?type=devices&rid=IDX),modify the line as this:
````
  #set the list of authorized json command here in regex format
  #you may retrieve the command from https://www.domoticz.com/wiki/Domoticz_API/JSON_URL's
  #By default, sensors updates and toggle switch are authorized
  if ( $args ~* type=command&param=udevice&idx=[0-9]*&nvalue=[0-9]*&svalue=.*$|type=command&param=switchlight&idx=[0-9]*&switchcmd=Toggle$|type=devices&rid=[0-9]* ) {
    set $api "1";
    }
````

All IPv4 addresses within the local network (192.168.0.0/24) and *all IPv6* addresses are authorized as API.
As far as I know, there is no way to filter for IPv6 address on local network : You may remove the authorization by removing or commenting this line in `/etc/nginx/conf.d/yourdomain.tld.d/domoticz.conf`:
````
allow ::/1;
````
This will authorized only IPv4 within local network to access your domoticz API.
You may add individual IPv6 address in the same way.

## Limitations

* No user management nor LDAP integration This function is [not planned to be implemented into the app](https://github.com/domoticz/domoticz/issues/838), hence it's not planned into the package neither.
* Backup cannot be restored on a different machine type (arm, x86...) as compiled sources are different
