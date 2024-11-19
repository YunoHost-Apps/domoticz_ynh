## Broker MQTT Mosquitto

À l'installation, un broker [MQTT](https://fr.wikipedia.org/wiki/MQTT), [Mosquitto](https://mosquitto.org/), peut être installé en même temps que Domoticz.
Ce broker nécessite un domaine ou un sous-domaine particulier pour fonctionner (ex : mqtt.your.domain.tld) : il est nécessaire de créer ce domaine auparavant.
Il est optionnel et si vous indiquez lors de l'installation un domaine vide ou le même domaine que le domaine principal pour le domaine MQTT, le broker ne sera pas installé.

## Libssl1.1
Domoticz nécessite libssl1.1 pour fonctionner. Cependant, Debian 12 ne fournit plus libssl1.1. Afin de contourner cette limitation, ce paquet va donc installer libssl1.1 depuis les dépots de bullseye. Si ceci vous pose un problème, merci de ne pas continuer l'installation.
Le package libssl1.1 sera retiré dés que Domoticz sera compatible avec libssl3.