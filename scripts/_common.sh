#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
#python3-dev required as per https://www.domoticz.com/forum/viewtopic.php?f=65&t=16116&p=119747
#mosquitto and mosquitto-clients are required for mqtt
#other dependencies are from standard install script... seems quite useles...
#REMOVEME? pkg_dependencies="libudev-dev python3-dev"
#REMOVEME? extra_pkg_dependencies="mosquitto mosquitto-clients"

default_mqtt_port=1883
default_mqtt_websocket_port=8883

#ALL FOLLOWING LINE FROM THE upstream bash installation script
DEBIAN_ID=$(grep -oP '(?<=^ID=).+' /etc/*-release | tr -d '"')
DEBIAN_VERSION=$(grep -oP '(?<=^VERSION_ID=).+' /etc/*-release | tr -d '"')
if test ${DEBIAN_VERSION} -lt 10
then
	add_dep="libcurl3"
else
	add_dep="libcurl4 libusb-0.1-4"
fi;
#REMOVEME? pkg_dependencies="$pkg_dependencies $add_dep"

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
