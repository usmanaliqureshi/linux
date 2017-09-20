#!/bin/bash
# Author: Usman Ali Qureshi (usman@usmanaliqureshi.com)
# More Scripts available at https://github.com/usmanaliqureshi/linux

### Checking if the script is running from root ###

if [[ `id -u` -ne 0 ]] ;
then
echo ""
echo "   Please run as root by typing sudo ./install-wine.sh   "
echo "" ;
exit 1 ;
fi

echo ""
echo "#####################################"
echo "#                                   #"
echo "#      Installing Wine 1.8          #"
echo "#                                   #"
echo "#####################################"
echo ""

############# Installing Wine #############

add-apt-repository ppa:ubuntu-wine/ppa

(apt-get update) 1>/dev/null

apt-get install wine1.8 winetricks

dpkg --add-architecture i386
add-apt-repository ppa:wine/wine-builds

(apt-get update) 1>/dev/null

apt-get install --install-recommends winehq-devel
