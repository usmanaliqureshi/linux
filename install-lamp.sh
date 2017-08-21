#!/bin/bash
#
# Author: Usman Ali Qureshi (usman@usmanaliqureshi.com)
#
# More Scripts are available at https://github.com/usmanaliqureshi/linux

### Checking if the script is running from root ###
if [[ `id -u` -ne 0 ]] ;
then
echo ""
echo "   Please run as root by typing sudo ./install-lamp.sh   "
echo "" ;
exit 1 ;
fi

echo ""
echo "### Installing LAMP Server ###"
echo ""
sudo apt-get update
echo ""

echo "### Installing Apache2 ###"
echo ""
sudo apt-get install apache2
echo ""

echo "### Installing MySQL-Server & Php5-MySQL ###"
echo ""
sudo apt-get install mysql-server php5-mysql
sudo mysql_install_db
sudo mysql_secure_installation
echo ""

echo "### Installing Php5 and relevant packages ###"
echo ""
sudo apt-get install php5 libapache2-mod-php5 php5-mcrypt
mv /etc/apache2/mods-enabled/dir.conf /etc/apache2/mods-enabled/dir.conf.backup
touch /etc/apache2/mods-enabled/dir.conf
echo "<IfModule mod_dir.c>" >> /etc/apache2/mods-enabled/dir.conf
echo "    DirectoryIndex index.php index.html index.cgi index.pl index.xhtml index.htm" >> /etc/apache2/mods-enabled/dir.conf
echo "</IfModule>" >> /etc/apache2/mods-enabled/dir.conf
echo ""

echo "### Restarting Apache2 ###"
echo ""
sudo service apache2 restart
echo ""

echo "### Installing Php5-CLI ###"
echo ""
sudo apt-get install php5-cli
touch /var/www/html/info.php
echo "<?php phpinfo(); ?>"
echo ""

echo "### Php Version Info ###"
sudo php -v
echo ""
echo "All Done - Have Fun"
echo ""
echo "LAMP Server is ready to use - http://localhost/info.php"
