# Ubuntu 17.04

### If Wifi is not connecting

Edit the file ```/etc/NetworkManager/NetworkManager.conf```

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
