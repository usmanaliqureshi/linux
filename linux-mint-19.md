# Linx Mint 19 Tips & Tricks

If you are experiencing display issues like the expected resolution is not showin in the **Display** section and if you know the exact resolution then you can apply the following solution.

```
xrandr --newmode "1680x1050R"  119.00  1680 1728 1760 1840  1050 1053 1059 1080 +hsync -vsync  
xrandr --addmode VGA-1 1680x1050R
xrandr --output VGA-1 --mode 1680x1050R
```

Note that you have to check how your monitor is connected and replace the VGA-1 with the source. To get the monitor source, type ```xrandr``` and check for the source which is **primary**.

Add the above code in .xprofile in your home directory. To create this file type the following commands.

```
touch $HOME/.xprofile
chmod +x $HOME/.xprofile
```

Now that you have applied the fix, you should get that perfect resolution each time you reboot your system.