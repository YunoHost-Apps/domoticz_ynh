### Initial access

User *admin* with password *domoticz* allow you to access the system. Of course, you should change them immediately.
User and password for Mosquitto broker are automatically generated during installation, you may retrieve them with
````
sudo yunohost app setting domoticz mqtt_user
sudo yunohost app setting domoticz mqtt_pwd
````


### Recommandation

It is advisable to not make the app publicly available outside of the YunoHost SSO (public = yes at install or setting the Domoticz permission to 'visitors' in the admin panel). If for any reason you need to, I recommend the following:
 - Activate the website protection/user management (with login page instead of Basic-auth)
 - In *Setup/Settings/System/Local Networks (no username/password)* enter the address of the NGINX proxy (should be "::1;127.0.0.1" in any standard YunoHost installation) so that the Fail2Ban settings is active (see last lines of [this wiki](https://www.domoticz.com/wiki/WebServer_Proxy)