## Broker MQTT Mosquitto

A l'installation, un broker [MQTT](https://fr.wikipedia.org/wiki/MQTT), [Mosquitto](https://mosquitto.org/), peut être installé en même temps que Domoticz. Il est optionnel et si vous indiquez lors de l'installation le même domaine que le domaine principal, il ne sera pas installé.
La version installée est celle du dépot officiel du projet, et non des dépots Debian.
Ce broker nécessite un domaine ou un sous-domaine particulier pour fonctionner (ex : mqtt.your.domain.tld) : il est nécessaire de créer ce domaine auparavant.


## Version installée

Actuellement, le projet domoticz ne fourni pas (encore) ces sources compilées par version. La version installée est donc une version compilée sur un [fork du projet](https://github.com/Krakinou/domoticz_build_on_arch). Le code source est celui de la version correspondante de domoticz.