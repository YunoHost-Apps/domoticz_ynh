## Mosquitto Broker

During installation, a [MQTT](https://en.wikipedia.org/wiki/MQTT) broker, [Mosquitto](https://mosquitto.org/), may be installed at the same time as Domoticz. It's an optional setting: during install if you set the same domaine as your main app domain, it won't be installed.
The installed version is the one from the official project repo and not from Debian ones.
This broker requires a dedicated domain or subdomain to work (ex : mqtt.your.domain.tld) : creating this domain prior installation is a prerequisite
