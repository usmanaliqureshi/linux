# All About Ubuntu

## Ubuntu 32 bit (i686)

* You can install Chromium from Ubuntu Store as Google Chrome is no more available for 32bit Ubuntu.

## Ubuntu 14.04
### Activating Colored Bash (if not enabled before)

Open ```~/.bashrc``` in text editor and uncomment line: ```#force_color_prompt=yes``` to be: ```force_color_prompt=yes```

Save then execute source ~/.bashrc

Open ```~/.bashrc``` in an editor and copy this and add it at the end of .bashrc file:

```PS1='\[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;31m\]\$\[\033[0m\] '```

save the file and restart bashrc:
```source ~/.bashrc```

### Install Java on Ubuntu 14.04

```sudo apt-get install icedtea-7-plugin openjdk-7-jre```

### Install Flash on Ubuntu 14.04

```sudo apt-get install flashplugin-installer```

## Ubuntu 16.04
### Move Unity Launcher (Icon Bar)

```gsettings set com.canonical.Unity.Launcher launcher-position Bottom```

```gsettings set com.canonical.Unity.Launcher launcher-position Left```

### Bandwidth Monitor (Indicator Netspeed - Unity) (Works on both Ubuntu 14 & 16)

```
sudo apt-get install dconf-editor
sudo apt-add-repository ppa:fixnix/netspeed
sudo apt-get update
sudo apt-get install indicator-netspeed-unity
```

Once the installation is finished then go to search and type indicator netspeed and click on the application which appears right below to run the Indicator Netspeed - Unity.

## Ubuntu 17.04
### If Wifi is not connecting

#### Edit the file /etc/NetworkManager/NetworkManager.conf

```
sudo su
pico /etc/NetworkManager/NetworkManager.conf
```

#### Add the following code at the end of this file

```
[device]
wifi.scan-rand-mac-address=no
```

#### After saving simply restart the network

```sudo service network-manager restart```

### How to install Git on Ubuntu

```sudo apt-get install git```
