#!/bin/bash
#
# Author: Usman Ali Qureshi (usman@usmanaliqureshi.com)
#
# More Scripts available at https://github.com/usmanaliqureshi/linux
#

### Checking if the script is running from root ###
if [[ `id -u` -ne 0 ]] ; then echo "Please run as root by typing sudo ./site-create.sh" ; exit 1 ; fi

echo ""
echo "######################################"
echo "#                                    #"
echo "#   Let's create a website for you   #"
echo "#                                    #"
echo "######################################"
echo ""

### Asking for the website name ###
echo " -> Website Domain Name (Example: usmanali.dev): " 
read webname

echo ""
sudo echo " -> Setting Up Virtual Host for $webname"
echo ""

### Adding the Virtual Host ###
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

### Setting Up Website Access ###
(sudo mkdir /var/www/html/$webname) 1>/dev/null
(sudo chmod go+w /var/www/html/$webname) 1>/dev/null
(sudo touch /var/www/html/$webname/index.php) 1>/dev/null
(sudo echo "<?php echo 'It works! You Rock :)'; ?>" >> /var/www/html/$webname/index.php) 1>/dev/null

### Setting Up Local Hostname ###
(sudo echo "127.0.0.1	"$webname >> /etc/hosts) 1>/dev/null

### Restarting Apache2 ###
(sudo service apache2 restart) 1>/dev/null 2>/dev/null

echo ""
echo " -> Apache is restarted "
echo ""

### @function to install WordPress ###
function wpinstall () {
  echo ""
  echo "Downloading the Latest version of WordPress"
  echo ""
  (wget https://wordpress.org/latest.tar.gz -P /tmp/) 1>/dev/null
  (tar -zxvf /tmp/latest.tar.gz -C /tmp/) 1>/dev/null
  (rm -rf /tmp/latest.tar.gz) 1>/dev/null
  (rm -rf /var/www/html/$webname/index.php) 1>/dev/null
  (mv /tmp/wordpress/* /var/www/html/$webname) 1>/dev/null
  (sudo chmod go+w /var/www/html/$webname) 1>/dev/null
}

### Asking for WordPress ###
echo " -> Do you also want to install WordPress in "
read wpanswer

### Making sure the user wants it ###
if [ $wpanswer = "yes" ] || [ $wpanswer = "y" ]
then
  wpinstall
fi

echo ""
echo " -=  All Done - Have fun =- "
echo ""
echo " You can access the website now at http://"$webname
echo ""
