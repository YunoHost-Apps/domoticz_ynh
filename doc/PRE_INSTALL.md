## Mosquitto Broker

During installation, a [MQTT](https://en.wikipedia.org/wiki/MQTT) broker, [Mosquitto](https://mosquitto.org/), may be installed at the same time as Domoticz. It's an optional setting: during install if you set the same domaine as your main app domain, it won't be installed.
This broker requires a dedicated domain or subdomain to work (ex : mqtt.your.domain.tld) : creating this domain prior installation is a prerequisite

## Installed Version

For now, domoticz project does not (yet) provide compiled binaries for each release. So, the installed release is a precompiled version from a [project fork](https://github.com/Krakinou/domoticz_build_on_arch). The source code is exactly the same as the original version.
