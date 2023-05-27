### Initial access

User *admin* with password *domoticz* allow you to access the system. Of course, you should change them immediately.
User and password for mosquitto broker are automatically generated during installation, you may retrieve them with
````
sudo yunohost app setting domoticz mqtt_user
sudo yunohost app setting domoticz mqtt_pwd
````


### recommandation

It is advisable to not make the app publicly available outside of the yunohost sso (public = yes at install or setting the domoticz permission to 'visitors' in the admin panel). If for any reason you need to, I recommend the following:
 - Activate the website protection/user management (with login page instead of Basic-auth)
 - In *Setup/Settings/System/Local Networks (no username/password)* enter the address of the nginx proxy (should be "::1;127.0.0.1" in any standard Yunohost installation) so that the Fail2ban settings is active (see last lines of [this wiki](https://www.domoticz.com/wiki/WebServer_Proxy)