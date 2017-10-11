
# Ubuntu 14.04

## Ubuntu 32 bit (i686)
If you are using 32 bit Ubuntu then you can install *Chromium from Ubuntu Store* because Google Chrome is no more available for 32bit Ubuntu.

### Open Terminal Anywhere
```
sudo apt-get install nautilus-open-terminal
nautilus -q
```

Once it is done then you can right click on any folder to open terminal in that folder

### Enabling Colors in Bash (if not enabled before)
Open ```~/.bashrc``` in text editor and uncomment the line: ```#force_color_prompt=yes``` to be: ```force_color_prompt=yes``` and save, then execute source ```~/.bashrc```

Open ```~/.bashrc``` in an editor and copy this and add it at the end of ```.bashrc``` file:

```PS1='\[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;31m\]\$\[\033[0m\] '```

save the file and restart bashrc:
```source ~/.bashrc```

### Install Java on Ubuntu 14.04
```sudo apt-get install icedtea-7-plugin openjdk-7-jre```

### Install Flash on Ubuntu 14.04
```sudo apt-get install flashplugin-installer```