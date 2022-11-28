
## Limitations

* No user management nor LDAP integration This function is [not planned to be implemented into the app](https://github.com/domoticz/domoticz/issues/838), hence it's not planned into the package neither.
* Backup cannot be restored on a different machine type (arm, x86...) as compiled sources are different

## Security consideration

Although you may activate a login page on the application (either from the *Setup/Settings/System/Website protection* menu or from the *Setup/More Options/Edit Users* menu), it doesn't seems to be very reliable and secure so far (version 2022.2 at the time of writing). Work is ongoing to strengthen the security ([see here](https://www.domoticz.com/wiki/Security)) in future version but is not yet released.

### recommandation

It seems advisable to not make the app publicly available outside of the yunohost sso (public = yes at install or setting the domoticz permission to 'visitors' in the admin panel). If for any reason you need to, I recommend the following:
 - Activate the website protection/user management (with login page instead of Basic-auth)
 - In *Setup/Settings/System/Local Networks (no username/password)* enter the address of the nginx proxy (should be "::1;127.0.0.1" in any standard Yunohost installation) so that the Fail2ban settings is active (see last lines of [this wiki](https://www.domoticz.com/wiki/WebServer_Proxy)
