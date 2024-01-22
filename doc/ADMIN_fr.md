## Broker MQTT Mosquitto

À l'installation, un broker [MQTT](https://fr.wikipedia.org/wiki/MQTT), [Mosquitto](https://mosquitto.org/), est installé en même temps que Domoticz.
Ce broker nécessite un domaine ou un sous-domaine particulier pour fonctionner (ex : mqtt.your.domain.tld) : il est nécessaire de créer ce domaine auparavant.
Vous pouvez également installer le [package pour Mosquitto](https://github.com/YunoHost-Apps/mosquitto_ynh) sans utiliser celui de domoticz_ynh.

#### Ajout dans Domoticz

Pour pouvoir l'utiliser, vous devez paramétrer la communication avec entre Domoticz et le broker en suivant la [documentation de Domoticz](https://www.domoticz.com/wiki/MQTT#Installing_Mosquitto) dans la partie *Add hardware "MQTT Client Gateway"*
Les users et mot de passe du broker sont automatiquement générés lors de l'installation. Vous pouvez les récupérer avec
````
sudo yunohost app setting __APP__ mqtt_user
sudo yunohost app setting __APP__ mqtt_pwd
````

#### Publier/souscrire

Par défaut, Mosquitto va écouter sur 2 ports :
- Le 1883 sur localhost en protocole MQTT
- Le 8883 en protocole websocket. NGINX redirige le port 443 externe vers ce port en interne.
Pour publier/souscrire sur un topic depuis l'exterieur, vous devez donc utiliser un programme supportant le protocole websocket (ex : la bibliothèque Python paho).

#### Mosquitto_pub et mosquitto_sub

Ces deux programmes ne supportent pas le protocole websocket mais uniquement le MQTT : le paramétrage de base ne vous autorise donc pas à les utiliser pour communiquer depuis un client externe.
Si vous les utilisez directement depuis votre serveur, ce genre de syntaxe devrait marcher :
````
mosquitto_pub -u *user* -P *password* -h mqtt.your.domain.tld -p 1883 -t 'domoticz/in' -m '{ "idx" : 1, "nvalue" : 0, "svalue" : "25.0" }'
````
De la même manière:c
````
mosquitto_sub -u *user* -P *password* -h mqtt.your.domain.tld -p 1883 -t 'domoticz/out'
````
Si vous souhaitez ouvrir le protocole MQTT depuis l'extérieur afin de pouvoir les utiliser depuis un autre serveur, il vous faudra:
- ouvrir le port 1883 sur le firewall YunoHost (**Attention, risque de sécurité**)
- autoriser les adresses IP souhaitées dans la configuration de mosquitto pour ce listener
- paramétrer le tls dans la configuration de mosquitto en donnant accès au crt.pem et key.pem de votre domaine MQTT en les paramétrant respectivement avec les variables certfile et keyfile. **Ceci est obligatoire pour sécuriser la connexion.**




#### Mise à jour depuis les versions n'ayant pas Mosquitto
Si vous êtes sur le package 2020.2~ynh3 ou inférieur, Mosquitto n'est pas installé par défaut.
De même si vous avez choisi de ne pas indiquer de domaine pour Mosquitto lors de l'installation initiale.
Pour pouvoir l'installer après coup, faites les actions suivantes :
1. créez un domaine ou sous-domaine pour recevoir les informations (par exemple : 'mqtt.your.domain.tld')
2. connecter vous en ligne de commande à votre serveur
3. taper la commande suivante : `yunohost app setting __APP__ mqtt_domain -v mqtt.your.domain.tld`
4. Procédez à la mise à jour.
Si vous êtes déjà sur la dernière version, utiliser la commmande suivante : `yunohost app upgrade __APP__ --force`


### Senseurs, langue et ce genre de choses
Toute la configuration de l'application a lieu dans l'application elle même

### Gestion du Zwave
Si vous utilisez des équipements Zwave, installez mosquitto en plus de Domoticz et essayez le [package zwave-JS-UI](https://github.com/YunoHost-Apps/zwave-js-ui_ynh).
Une fois installé, suivez simplement les indications du [wiki](https://www.domoticz.com/wiki/Zwave-JS-UI)

### Accès et API
Par défaut, l'accès aux [API JSON](https://www.domoticz.com/wiki/Domoticz_API/JSON_URL's) est autorisé sur cette URL `/votredomaine.tld/api_/chemindedomoticz`.
Donc, si vous accédez à Domoticz par https://votredomaine.tld/domoticz, utilisez le chemin suivant pour l'API: `/votredomaine.tld/api_/domoticz/json.htm?votrecommandeapi`

Par défaut, seule la mise à jour de senseur et les interrupteurs sont autorisés. Pour autoriser une nouvelle commande, vous devez manuellement éditer le fichier de configuration NGINX :
````
sudo nano /etc/nginx/conf.d/yourdomain.tld.d/api___APP__.conf
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
Par exemple, pour ajouter la commmande JSON pour retrouver le statut d'un équipement (/json.htm?type=devices&rid=IDX),il faut modifier la ligne comme ceci :
````
  if ( $args ~* type=command&param=udevice&idx=[0-9]*&nvalue=[0-9]*&svalue=.*$|type=command&param=switchlight&idx=[0-9]*&switchcmd=Toggle$|type=devices&rid=[0-9]* ) {
    set $api "1";
    }
````

Toutes les adresses IPv4 du réseau local (192.168.0.0/24) et toutes les adresses IPv6 sont autorisées pour l'API.
À ma connaissance, il n'y a pas moyen d'effectuer un filtre pour les adresses IPv6 sur le réseau local, vous pouvez donc retirer leur autorisation en enlevant ou en commentant la ligne suivante dans `/etc/nginx/conf.d/yourdomain.tld.d/domoticz.conf`:
````
allow ::/1;
````
Ceci autorisera seulement les adresses IPv4 local a accéder aux API de Domoticz.
Vous pouvez ajouter des adresses IPv6 de la même façon.

## Mise à jours

Les mises à jours depuis l'application ont été désactivées. Bon, en vrai, c'est juste le lien qui est caché, vous pouvez donc en fait toujours faire la mise à jour depuis la ligne de commande si vous savez comment faire. Ceci permet d'éviter certaines mises à jour qui peuvent casser l'intégration avec YunoHost, tel que l'obligation de créer des users depuis la 2023.1.


## Limitations

* Un backup ne peut pas être restauré sur un type de machine différente de celle d'origine (x86, arm...) car les sources compilées sont différentes
* Pas de gestion du LDAP dans l'application