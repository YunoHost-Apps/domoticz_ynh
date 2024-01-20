## Configuration

### Broker MQTT Mosquitto

Vous pouvez install le broker [MQTT](https://fr.wikipedia.org/wiki/MQTT) [Mosquitto](https://github.com/YunoHost-Apps/mosquitto_ynh) simultanément à Domoticz.

#### Ajout dans Domoticz

Pour pouvoir l'utiliser, vous devez paramétrer la communication avec entre Domoticz et le broker en suivant la [documentation de Domoticz](https://www.domoticz.com/wiki/MQTT#Installing_Mosquitto) dans la partie *Add hardware "MQTT Client Gateway"*

#### Migration depuis la version 2020.2~ynh7

Avant la version 2023.2~ynh1, domoticz_ynh pouvait intégrer directement le broker Mosquitto lors de son installation. Cette option n'est plus maintenu car trop complexe.
Pour migrer vers depuis une installation de Mosquitto "intradomoticz" vers le package officiel de Mosquitto pour Domoticz, merci de consulter cette [documentation]

### Senseurs, langue et ce genre de choses
Toute la configuration de l'application a lieu dans l'application elle même

### Gestion du Zwave
Si vous utilisez des équipements zwave, installez Mosquitto en plus de Domoticz et essayez le [package zwave-JS-UI](https://github.com/YunoHost-Apps/zwave-js-ui_ynh).
Une fois installé, suivez simplement les indications du [wiki](https://www.domoticz.com/wiki/Zwave-JS-UI)

### Accès et API
Par défaut, l'accès aux [API JSON](https://www.domoticz.com/wiki/Domoticz_API/JSON_URL's) est autorisé sur cette URL `/votredomaine.tld/api_/chemindedomoticz`.
Donc, si vous accédez à Domoticz par https://votredomaine.tld/domoticz, utilisez le chemin suivant pour l'api: `/votredomaine.tld/api_/domoticz/json.htm?votrecommandeapi`

Par défaut, seule la mise à jour de senseur et les interrupteurs sont autorisés. Pour autoriser une nouvelle commande, vous devez manuellement éditer le fichier de configuration NGINX :
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
Ceci autorisera seulement les adresses IPv4 local a accéder aux API de Domoticz.
Vous pouvez ajouter des adresses IPv6 de la même façon.

## Limitations

* Un backup ne peut pas être restauré sur un type de machine différente de celle d'origine (x86, arm...) car les sources compilées sont différentes
