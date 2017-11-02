#!/bin/bash
# Author: Usman Ali Qureshi (usman@usmanaliqureshi.com)
# More Scripts available at https://github.com/usmanaliqureshi/linux

### Checking if the script is running from root ###
if [[ `id -u` -ne 0 ]] ;
then
echo ""
echo "   Please run as root by typing: sudo ./wp.sh   "
echo "" ;
exit 1 ;
fi

echo ""
echo "#####################################"
echo "#                                   #"
echo "#         Install WordPress         #"
echo "#                                   #"
echo "#####################################"
echo ""

echo " -> Please type the absolute path of the root folder of your website (Example: /var/www/html/usmanaliqureshi.dev):"
read webname

echo ""
echo "  -> Downloading the latest package of WordPress"
echo ""
(wget https://wordpress.org/latest.tar.gz -P /tmp/) 1>/dev/null
(tar -zxvf /tmp/latest.tar.gz -C /tmp/) 1>/dev/null
(rm -rf /tmp/latest.tar.gz) 1>/dev/null
(mv /tmp/wordpress/* $webname) 1>/dev/null
(rm -rf /tmp/wordpress) 1>/dev/null

echo ""
echo "  -> WordPress is installed successfully"
echo ""
