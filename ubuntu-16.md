
# Ubuntu 16.04

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

Once the installation is finished, you can go to search and type ```indicator netspeed``` and click on the application which appears below to run the *Indicator Netspeed - Unity*
