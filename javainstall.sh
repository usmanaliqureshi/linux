#!/bin/bash
#
# Author: Usman Ali Qureshi (usman@usmanaliqureshi.com)
#
# More Scripts available at https://github.com/usmanaliqureshi/linux
#
### Checking if the script is running from root ###
if [[ `id -u` -ne 0 ]] ;
then
echo ""
echo "   Please run as root by typing sudo ./javainstall.sh   "
echo "" ;
exit 1 ;
fi
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update
sudo apt-get install oracle-java8-installer
