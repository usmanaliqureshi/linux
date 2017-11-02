#!/bin/bash
# Author: Usman Ali Qureshi (usman@usmanaliqureshi.com)
# More Scripts available at https://github.com/usmanaliqureshi/linux

### Checking if the script is running from root ###
if [[ `id -u` -ne 0 ]] ;
then
echo ""
echo "   Please run as root by typing: sudo ./install-sublime3.sh   "
echo "" ;
exit 1 ;
fi

echo ""
echo "  -> Installing Sublime Text 3  "
echo ""
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer
echo "[SUCCESS] Sublime Text 3 is installed"
echo ""
