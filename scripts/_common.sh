#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

#mosquitto and mosquitto-clients are required for mqtt
extra_pkg_dependencies="mosquitto mosquitto-clients"

default_mqtt_port=1883
default_mqtt_websocket_port=8883


lowercase(){
    echo "$1" | sed "y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/"
}

os=`lowercase \`uname -s\``
mach=`uname -m`
if [ ${mach} = "armv6l" ]
then
 mach="armv7l"
fi
sha256=$(wget -qO- https://releases.domoticz.com/releases/release/domoticz_${os}_${mach}.tgz.sha256sum | sed 's/ update.tgz//' | sed 's/  domoticz_linux_x86_64.tgz//')

#=================================================
# PERSONAL HELPERS
#=================================================

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
