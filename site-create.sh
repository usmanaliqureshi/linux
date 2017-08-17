#!/bin/bash
#
# Author: Usman Ali Qureshi (usman@usmanaliqureshi.com)
#
# More Scripts available at https://github.com/usmanaliqureshi/linux
#

echo ""
echo "######################################"
echo "#                                    #"
echo "#   Let's create a website for you   #"
echo "#                                    #"
echo "######################################"
echo ""

echo " -> Website Name: " 
read webname

echo ""
sudo echo " -> Setting Up Virtual Host for $webname"
echo ""

(sudo echo " " >> /etc/apache2/sites-available/000-default.conf) 1>/dev/null
(sudo echo "<VirtualHost *:80>" >> /etc/apache2/sites-available/000-default.conf) 1>/dev/null
(sudo echo "	ServerName "$webname >> /etc/apache2/sites-available/000-default.conf) 1>/dev/null
(sudo echo "	ServerAdmin webmaster@localhost" >> /etc/apache2/sites-available/000-default.conf) 1>/dev/null
(sudo echo "	DocumentRoot /var/www/html/$webname" >> /etc/apache2/sites-available/000-default.conf) 1>/dev/null
(sudo echo "	ErrorLog /var/www/html/$webname/error.log" >> /etc/apache2/sites-available/000-default.conf) 1>/dev/null
(sudo echo "	CustomLog /var/www/html/$webname/access.log combined" >> /etc/apache2/sites-available/000-default.conf) 1>/dev/null
(sudo echo "</VirtualHost>" >> /etc/apache2/sites-available/000-default.conf) 1>/dev/null
(sudo echo " " >> /etc/apache2/sites-available/000-default.conf) 1>/dev/null

echo ""
echo " -> Creating Directory and Setting Up Web Access" $webname
echo ""

(sudo mkdir /var/www/html/$webname) 1>/dev/null
(sudo chmod go+w /var/www/html/$webname) 1>/dev/null
(sudo touch /var/www/html/$webname/index.php) 1>/dev/null
(sudo echo "<?php echo 'It works! You Rock :)'; ?>" >> /var/www/html/$webname/index.php) 1>/dev/null

(sudo echo "127.0.0.1	"$webname >> /etc/hosts) 1>/dev/null

(sudo service apache2 restart) 1>/dev/null 2>/dev/null

echo ""
echo " -> Apache is restarted "
echo ""

echo ""

echo ""
echo " -=  All Done - Have fun =- "
echo " You can access the website now at http://"$webname
echo ""
