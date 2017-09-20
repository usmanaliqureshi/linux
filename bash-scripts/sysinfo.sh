#!/bin/bash
# Author: Usman Ali Qureshi (usman@usmanaliqureshi.com)
# More Scripts available at https://github.com/usmanaliqureshi/linux

### Checking if the script is running from root ###
if [[ `id -u` -ne 0 ]] ;
then
echo ""
echo "   Please run as root by typing sudo ./sysinfo.sh   "
echo "" ;
exit 1 ;
fi

clear

echo 
echo 
echo "This information is brought to you by $0."
echo

### Welcome the user ###
echo "Welcome, $USER"
echo
echo "Today is `date`."
echo

### Current active users. ###
echo "Active Users:" 
w | cut -d ' ' -f 1 | grep -v USER | sort -u
echo

### System information using uname command ###
echo "This is `uname -s` running on a `uname -m` processor."
echo

### Information of uptime ###
echo "System Uptime:"
uptime
echo

### Showing free memory ###
echo "Memory Details:"
free
echo

### Disk space usage using df command ###
echo "Disk Space Utilization:"
df -mh
echo 
