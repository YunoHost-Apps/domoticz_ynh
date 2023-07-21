### Première connexion

L'utilisateur *admin* et le mot de passe *domoticz* vous permettront d'accéder au système. Il est bien évidemment recommandé de les modifier immédiatement

### recommandations

Il est conseillé de ne pas rendre l'application publique en dehors du sso yunohost (public = oui à l'installation ou mettre la permission domoticz à 'Visiteurs' dans le panel d'administration Yunohost). Si pour quelques raisons que ce soit, vous deviez le faire, je vous recommande:
 - d'activer la sécurité de connexion à domoticz (plutot avec la login page qu'avec la basic-auth)
 - Dans *Configuration/Système/Réseaux Locaux (pas d'authentification)* d'entrer les adresses du proxy nginx (cela devrait être "::1;127.0.0.1" dans une installation Yunohost Standard) afin que Fail2ban puisse bloquer les tentatives de connexions (voir les dernières lignes de [ce wiki](https://www.domoticz.com/wiki/WebServer_Proxy)