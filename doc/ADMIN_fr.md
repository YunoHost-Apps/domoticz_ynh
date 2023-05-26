## Configuration

### Broker MQTT Mosquitto

A l'installation, un broker [MQTT](https://fr.wikipedia.org/wiki/MQTT), [Mosquitto](https://mosquitto.org/), est installé en même temps que Domoticz. La version installée est celle du dépot officiel du projet, et non des dépots Debian.
Ce broker nécessite un domaine ou un sous-domaine particulier pour fonctionner (ex : mqtt.your.domain.tld) : il est nécessaire de créer ce domaine auparavant.

#### Ajout dans domoticz

Pour pouvoir l'utiliser, vous devez paramétrer la communication avec entre domoticz et le broker en suivant la [documentation de domoticz](https://www.domoticz.com/wiki/MQTT#Installing_Mosquitto) dans la partie *Add hardware "MQTT Client Gateway"*
Les users et mot de passe du broker sont automatiquement générés lors de l'installation. Vous pouvez les récupérer avec
````
sudo yunohost app setting domoticz mqtt_user
sudo yunohost app setting domoticz mqtt_pwd
````

#### Publier/souscrire

Par défaut, mosquitto va écouter sur 2 ports:
- Le 1883 sur localhost en protocole mqtt
- Le 8883 en protocole websocket. Nginx redirige le port 443 externe vers ce port en interne.
Pour publier/souscrire sur un topic depuis l'exterieur, vous devez donc utiliser un programme supportant le protocole websocket (ex : la bibliothèque python paho).:

#### Mosquitto_pub et mosquitto_sub

Ces deux programmes ne supportent pas le protocole websocket mais uniquement le mqtt : le paramétrage de base ne vous autorise donc pas à les utiliser pour communiquer depuis un client externe.
Si vous les utilisez directement depuis votre serveur, ce genre de syntaxe devrait marcher:
````
mosquitto_pub -u *user* -P *password* -h mqtt.your.domain.tld -p 1883 -t 'domoticz/in' -m '{ "idx" : 1, "nvalue" : 0, "svalue" : "25.0" }'
````
De la même manière:c
````
mosquitto_sub -u *user* -P *password* -h mqtt.your.domain.tld -p 1883 -t 'domoticz/out'
````
Si vous souhaitez ouvrir le protocole mqtt depuis l'extérieur afin de pouvoir les utiliser depuis un autre serveur, il vous faudra:
- ouvrir le port 1883 sur le firewall Yunohost (**Attention, risque de sécurité**)
- autoriser les adresses IP souhaitées dans la configuration de mosquitto pour ce listener
- paramétrer le tls dans la configuration de mosquitto en donnant accès au crt.pem et key.pem de votre domaine mqtt en les paramétrant respectivement avec les variables certfile et keyfile. **Ceci est obligatoire pour sécuriser la connexion.**




#### Mise à jour depuis les versions n'ayant pas mosquittoo
Si vous êtes sur le package ynh3 ou inférieur, mosquitto n'est pas installé par défaut.
De même si vous avez choisi de ne pas indiquer de domaine pour mosquitto lors de l'installation initiale.
Pour pouvoir l'installer après coup, faites les actions suivantes:
1. créez un domaine ou sous-domaine pour recevoir les informations (par exemple : 'mqtt.your.domain.tld')
2. connecter vous en ligne de commande à votre serveur
3. taper la commande suivante : `yunohost app setting domoticz mqtt_domain -v mqtt.your.domain.tld`
4. Procédez à la mise à jour.
Si vous êtes déjà sur la dernière version, utiliser la commmande suivante : `yunohost app upgrade domoticz --force`


### Senseurs, langue et ce genre de choses
Toute la configuration de l'application a lieu dans l'application elle même

### Gestion du Zwave
Si vous utilisez des équipements zwave, installez mosquitto en plus de domoticz et essayez le [package zwave-JS-UI](https://github.com/YunoHost-Apps/zwave-js-ui_ynh).
Une fois installé, suivez simplement les indications du [wiki](https://www.domoticz.com/wiki/Zwave-JS-UI)

### Accès et API
Par défaut, l'accès aux [API JSON](https://www.domoticz.com/wiki/Domoticz_API/JSON_URL's) est autorisé sur cette URL `/votredomaine.tld/api_/chemindedomoticz`.
Donc, si vous accédez à domoticz par https://votredomaine.tld/domoticz, utilisez le chemin suivant pour l'api: `/votredomaine.tld/api_/domoticz/json.htm?votrecommandeapi`

Par défaut, seule la mise à jour de senseur et les interrupteurs sont autorisés. Pour autoriser une nouvelle commande, vous devez manuellement éditer le fichier de configuration nginx :
````
sudo nano /etc/nginx/conf.d/yourdomain.tld.d/api_domoticz.conf
````
Puis éditer le bloc suivant en y ajoutant le regex de la commmande à autoriser :
````
  #set the list of authorized json command here in regex format
  #you may retrieve the command from https://www.domoticz.com/wiki/Domoticz_API/JSON_URL's
  #By default, sensors updates and toggle switch are authorized
  if ( $args ~* type=command&param=udevice&idx=[0-9]*&nvalue=[0-9]*&svalue=.*$|type=command&param=switchlight&idx=[0-9]*&switchcmd=Toggle$) {
    set $api "1";
    }
````
Par exemple, pour ajouter la commmande json pour retrouver le statut d'un équipement (/json.htm?type=devices&rid=IDX),il faut modifier la ligne comme ceci:
````
  if ( $args ~* type=command&param=udevice&idx=[0-9]*&nvalue=[0-9]*&svalue=.*$|type=command&param=switchlight&idx=[0-9]*&switchcmd=Toggle$|type=devices&rid=[0-9]* ) {
    set $api "1";
    }
````

Toutes les adresses IPv4 du réseau local (192.168.0.0/24) et toutes les adresses IPv6 sont autorisées pour l'API.
A ma connaissance, il n'y a pas moyen d'effectuer un filtre pour les adresses IPv6 sur le réseau local, vous pouvez donc retirer leur autorisation en enlevant ou en commentant la ligne suivante dans `/etc/nginx/conf.d/yourdomain.tld.d/domoticz.conf`:
````
allow ::/1;
````
Ceci autorisera seulement les adresses IPv4 local a accéder aux API de domoticz.
Vous pouvez ajouter des adresses IPv6 de la même façon.

## Limitations

* Un backup ne peut pas être restauré sur un type de machine différente de celle d'origine (x86, arm...) car les sources compilées sont différentes
