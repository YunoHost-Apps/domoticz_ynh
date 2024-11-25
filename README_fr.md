<!--
Nota bene : ce README est automatiquement généré par <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Il NE doit PAS être modifié à la main.
-->

# Domoticz pour YunoHost

[![Niveau d’intégration](https://apps.yunohost.org/badge/integration/domoticz)](https://ci-apps.yunohost.org/ci/apps/domoticz/)
![Statut du fonctionnement](https://apps.yunohost.org/badge/state/domoticz)
![Statut de maintenance](https://apps.yunohost.org/badge/maintained/domoticz)

[![Installer Domoticz avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=domoticz)

*[Lire le README dans d'autres langues.](./ALL_README.md)*

> *Ce package vous permet d’installer Domoticz rapidement et simplement sur un serveur YunoHost.*  
> *Si vous n’avez pas YunoHost, consultez [ce guide](https://yunohost.org/install) pour savoir comment l’installer et en profiter.*

## Vue d’ensemble

Domoticz est un système de domotique permettant de controler différents objets et de recevoir des données de divers senseurs
Il peut par exemple être utilisé avec :

* des interrupteurs
* des senseurs de portes
* des sonnettes d'entrées
* des systèmes de sécurité
* des stations météo pour les UV, la pluie, le vent...
* des sondes de températures
* des sondes d'impulsions
* des voltmètres
* Et bien d'autres

Le broker MQTT Mosquitto est intégré au package et nécessite un sous-domaine ou un domaine distinct. Il est optionnel.
Vous pouvez également installer le [package pour Mosquitto](https://github.com/YunoHost-Apps/mosquitto_ynh) sans utiliser celui de domoticz_ynh.




**Version incluse :** 2024.6~ynh2

## Captures d’écran

![Capture d’écran de Domoticz](./doc/screenshots/domoticz_Switches_screen.png)
![Capture d’écran de Domoticz](./doc/screenshots/domoticz_floorplan_machineon.png)

## Documentations et ressources

- Site officiel de l’app : <https://domoticz.com/>
- Documentation officielle utilisateur : <https://www.domoticz.com/DomoticzManual.pdf>
- Documentation officielle de l’admin : <https://www.domoticz.com/wiki/Main_Page>
- Dépôt de code officiel de l’app : <https://github.com/domoticz/domoticz>
- YunoHost Store : <https://apps.yunohost.org/app/domoticz>
- Signaler un bug : <https://github.com/YunoHost-Apps/domoticz_ynh/issues>

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche `testing`](https://github.com/YunoHost-Apps/domoticz_ynh/tree/testing).

Pour essayer la branche `testing`, procédez comme suit :

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/domoticz_ynh/tree/testing --debug
ou
sudo yunohost app upgrade domoticz -u https://github.com/YunoHost-Apps/domoticz_ynh/tree/testing --debug
```

**Plus d’infos sur le packaging d’applications :** <https://yunohost.org/packaging_apps>
