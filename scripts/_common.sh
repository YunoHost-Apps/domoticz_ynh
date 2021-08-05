#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
#python3-dev required as per https://www.domoticz.com/forum/viewtopic.php?f=65&t=16116&p=119747
#other dependencies are from standard install script... seems quite useles...
pkg_dependencies="libudev-dev python3-dev"

#ALL FOLLOWING LINE FROM THE upstream bash installation script
DEBIAN_ID=$(grep -oP '(?<=^ID=).+' /etc/*-release | tr -d '"')
DEBIAN_VERSION=$(grep -oP '(?<=^VERSION_ID=).+' /etc/*-release | tr -d '"')
if test ${DEBIAN_VERSION} -lt 10
then
	add_dep="libcurl3"
else
	add_dep="libcurl4 libusb-0.1-4"
fi;
pkg_dependencies="$pkg_dependencies $add_dep"

lowercase(){
    echo "$1" | sed "y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/"
}

OS=`lowercase \`uname -s\``
MACH=`uname -m`
if [ ${MACH} = "armv6l" ]
then
 MACH="armv7l"
fi
SHA256=$(wget -qO- https://releases.domoticz.com/releases/release/domoticz_${OS}_${MACH}.tgz.sha256sum | sed 's/ update.tgz//' | sed 's/  domoticz_linux_x86_64.tgz//')

#=================================================
# PERSONAL HELPERS
#=================================================

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
