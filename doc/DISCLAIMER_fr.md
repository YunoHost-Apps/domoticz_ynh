
## Limitations

* Pas de gestion d'utilisateurs ni d'intégration LDAP. L'application ne [prévoit pas de gérer les utilisateurs par LDAP](https://github.com/domoticz/domoticz/issues/838), donc le package non plus.
* Un backup ne peut pas être restauré sur un type de machine différente de celle d'origine (x86, arm...) car les sources compilées sont différentes

## A propos de la sécurité

Bien que vous pouviez activer une page de connexion dans l'application (soit depuis le menu *Configuration/Paramètres/Système/Sécurité* ou depuis *Configuration/Plus d'options/Gérer les utilisateurs*), les fonctionnalités ne semblent pas très avancées ni safe pour l'instant (version 2022.2 au moment d'écrire). Un travail a été entrepris pour renforcer la sécurité ([voir ici](https://www.domoticz.com/wiki/Security)) dans les versions futures mais n'a pas encore été released.

### recommandations

Il semble conseillé de ne pas rendre l'application publique en dehors du sso yunohost (public = oui à l'installation ou mettre la permission domoticz à 'Visiteurs' dans le panel d'administration Yunohost). Si pour quelques raisons que ce soit, vous deviez le faire, je vous recommande:
 - d'activer la sécurité de connexion à domoticz (plutot avec la login page qu'avec la basic-auth)
 - Dans *Configuration/Système/Réseaux Locaux (pas d'authentification)* d'entrer les adresses du proxy nginx (cela devrait être "::1;127.0.0.1" dans une installation Yunohost Standard) afin que Fail2ban puisse bloquer les tentatives de connexions (voir les dernières lignes de [ce wiki](https://www.domoticz.com/wiki/WebServer_Proxy)