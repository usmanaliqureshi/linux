#!/bin/bash
# Author: Usman Ali Qureshi (usman@usmanaliqureshi.com)
# More Scripts available at https://github.com/usmanaliqureshi/linux

### Checking if the script is running from root ###
if [[ `id -u` -ne 0 ]] ;
then
echo ""
echo "   Please run as root by typing: sudo ./ipkg.sh   "
echo "" ;
exit 1 ;
fi

echo ""
echo "#####################################"
echo "#                                   #"
echo "#   Installing necessary packages   #"
echo "#                                   #"
echo "#####################################"
echo ""

echo ""
echo " ->  Installing the text editor nano "
echo ""
(sudo apt-get install -y git nano) 1>/dev/null

echo ""
echo " ->  Installing git and htop "
echo ""
(sudo apt-get install -y git htop) 1>/dev/null

echo ""
echo " ->  Installing java for linux "
echo ""
(sudo apt-get install -y icedtea-7-plugin openjdk-7-jre) 1>/dev/null

echo ""
echo " ->  Installing flash plugin "
echo ""
(sudo apt-get install flashplugin-installer) 1>/dev/null

echo ""

echo ""
echo " -=  All Done - Have fun =- "
echo ""

echo "[SUCCESS] All Packages are installed"
echo ""
