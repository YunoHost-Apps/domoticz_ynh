# App exemple pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/domoticz.svg)](https://dash.yunohost.org/appci/app/domoticz) ![](https://ci-apps.yunohost.org/ci/badges/domoticz.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/domoticz.maintain.svg)  
[![Installer domoticz avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=domoticz)

*[Read this readme in english.](./README.md)* 

> *Ce package vous permet d'installer domoticz rapidement et simplement sur un serveur YunoHost.  
Si vous n'avez pas YunoHost, consultez [le guide](https://yunohost.org/#/install) pour apprendre comment l'installer.*

## Vue d'ensemble
Domoticz est un système de domotique permettant de controler différents objets et de recevoir des données de divers senseurs
Il peut par exemple être utilisé avec :

-des interrupteurs

-des senseurs de portes

-des sonnettes d'entrées

-des systèmes de sécurité

-des stations météo pour les UV, la pluie, le vent...

-des sondes de températures

-des sondes d'impulsions

-des voltmètres

-Et bien d'autres

**Version incluse :** Toujours la dernière version stable. La dernière version compilée est récupérée dans [ce répertoire](https://releases.domoticz.com/releases/?dir=./beta)


## Configuration

Toute la configuration a lieu à l'intérieur de l'application elle-même.

## Documentation

 * Documentation officielle : Utilisez le [wiki](https://www.domoticz.com/wiki/Main_Page) et le  [manuel utilisateurs](https://www.domoticz.com/DomoticzManual.pdf) pour plus d'informations
 * Documentation YunoHost : Si une documentation spécifique est nécessaire, n'hésitez pas à contribuer.

## Caractéristiques spécifiques YunoHost

#### Support multi-utilisateur

Pas de gestion d'utilisateurs pour l'instant.
L'application ne [prévoit pas de gérer les utilisateurs par LDAP](https://github.com/domoticz/domoticz/issues/838), donc le package non plus.

#### Architectures supportées

A la fois les architectures ARM et x86 devraient être supportées.
Les sources compilées sont directement téléchargées par le package.

## Limitations

* Limitations connues.

## Informations additionnelles

* Autres informations que vous souhaitez ajouter sur cette application.

**Plus d'informations sur la page de documentation :**  
https://yunohost.org/packaging_apps

## Liens

 * Signaler un bug : https://github.com/Krakinou/domoticz_ynh/issues
 * Site de l'application : https://domoticz.com/
 * Dépôt de l'application principale : https://github.com/domoticz/domoticz
 * Site web YunoHost : https://yunohost.org/

---

Informations pour les développeurs
----------------

**Seulement si vous voulez utiliser une branche de test pour le codage, au lieu de fusionner directement dans la banche principale.**
Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/domoticz_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/Krakinou/domoticz_ynh/tree/testing --debug
ou
sudo yunohost app upgrade domoticz -u https://github.com/Krakinou/domoticz_ynh/tree/testing --debug
```
