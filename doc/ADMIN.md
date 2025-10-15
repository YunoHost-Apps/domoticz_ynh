## Broker Mosquitto

During installation, a [MQTT](https://en.wikipedia.org/wiki/MQTT) broker, [Mosquitto](https://mosquitto.org/), is installed at the same time as Domoticz.
This broker requires a dedicated domain or subdomain to work (ex : mqtt.your.domain.tld): creating this domain prior installation is a prerequisite
You may also install the [Mosquitto package](https://github.com/YunoHost-Apps/mosquitto_ynh) without using the one provided by domoticz_ynh.

#### Adding in Domoticz

To use Mosquitto, you need to customize the communication between Domoticz and the broker by following the [domoticz documentation](https://www.domoticz.com/wiki/MQTT#Installing_Mosquitto), part *Add hardware "MQTT Client Gateway"*.
User and password are automatically generated during installation, you may retrieve them with
````
sudo yunohost app setting __APP__ mqtt_user
sudo yunohost app setting __APP__ mqtt_pwd
````

#### Publish/Subscribe

By default, mosquitto will listen on 2 ports:
- 1883 on localhost using MQTT protocol
- 8883 using websocket protocol. NGINX redirect external port 443 to this internal port.

Hence, To publish/subscribe on a topic from the outside, you have to use a software supporting websocket protocol (ex : paho Python library).

#### Mosquitto_pub et mosquitto_sub

These 2 tools do not support websocket protocol, only direct mqtt: base settings will not allow communication from an outside device.
If you're using them directly from your server, this kind of syntax should work:
````
mosquitto_pub -u *user* -P *password* -h mqtt.your.domain.tld -p 1883 -t 'domoticz/in' -m '{ "idx" : 1, "nvalue" : 0, "svalue" : "25.0" }'
````
In the same way:
````
mosquitto_sub -u *user* -P *password* -h mqtt.your.domain.tld -p 1883 -t 'domoticz/out'
````

If you wish to open direct mqtt protocol from an outside device, you'll need to:
- open port 1883 on YunoHost firewall (**Attention, security risk**)
- Allows IP addresses in Mosquitto configuration for this listener
- Set the tls setting in Mosquitto configuration by giving access to crt.pem and key.pem from your mqtt domain by setting respective certfile et keyfile variables. **This is mandatory to ensure a secure connection.**

#### Upgrade from version without Mosquitto
If you have package 2020.2~ynh3 or below or if you have chosen to not set a domain during initial installation, Mosquitto is not installed by default.
If you need to activate mosquitto in retrospect, do following actions:
1. Create a domain or a subdomain (for example: 'mqtt.your.domain.tld')
2. Connect to your server in command line
3. Type following command : `yunohost app setting __APP__ mqtt_domain -v mqtt.your.domain.tld`
4. Upgrade Domoticz to last package.
If you're already on the last package version, use the following command: `yunohost app upgrade __APP__ --force`

## Configuration

### Sensors, language and this kind of stuff
Main configuration of the app take place inside the app itself.

### Zwave management
If you're using Zwave devices, install Mosquitto along Domoticz and give a try to [zwave-JS-UI package](https://github.com/YunoHost-Apps/zwave-js-ui_ynh).
Once installed, just follow instructions from the [wiki](https://www.domoticz.com/wiki/Zwave-JS-UI)

### Access and API
By default, access for the [JSON API](https://www.domoticz.com/wiki/Domoticz_API/JSON_URL's) is allowed on following path `/yourdomain.tld/api_/domoticzpath`.
So if you access Domoticz via https://mydomainname.tld/domoticz, use the following webpath for the API: `/mydomainname.tld/api_/domoticz/json.htm?yourapicommand`

By default, only sensor updates and switch toogle are authorized. To authorized a new command, you have to manually update the NGINX config file:
````
sudo nano /etc/nginx/conf.d/yourdomain.tld.d/api___APP__.conf
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
For example, to add the JSON command to retrieve the status of a device (/json.htm?type=devices&rid=IDX),modify the line as this:
````
  if ( $args ~* type=command&param=udevice&idx=[0-9]*&nvalue=[0-9]*&svalue=.*$|type=command&param=switchlight&idx=[0-9]*&switchcmd=Toggle$|type=devices&rid=[0-9]* ) {
    set $api "1";
    }
````

All IPv4 addresses within the local network (192.168.0.0/24) and *all IPv6* addresses are authorized as API.
As far as I know, there is no way to filter for IPv6 address on local network: You may remove the authorization by removing or commenting this line in `/etc/nginx/conf.d/yourdomain.tld.d/domoticz.conf`:
````
allow ::/1;
````
This will authorized only IPv4 within local network to access your Domoticz API.
You may add individual IPv6 address in the same way.

## Upgrades

Upgrades from inside the application have been disabled. Well, in fact I just hide the link, so you can still upgrade using the command line if you know how to do it. This is to avoid some unexpected upgrade that may break the YunoHost integration, such as the mandatory user management from 2023.1.

## Limitations

* Backup cannot be restored on a different machine type (arm, x86...) as compiled sources are different
* LDAP is not supported by the upstream app