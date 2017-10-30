# Basic Linux Commands to Help Newbies Get Started

## 1. sudo

This SuperUserDo is the most important command Linux newbies will use. Every single command that needs root's permission, need this sudo command. You can use sudo before each command that requires root permissions -

```$ sudo su```

## 2. ls (list)

Just like the other, you often want to see anything in your directory. With list command, the terminal will show you all the files and folders of the directory that you're working in. Let's say I'm in the /home folder and I want to see the directories & files in /home.

```/home$ ls```

ls in /home returns the following -

```imad lost+found```

## 3. cd

Changing directory (cd) is the main command that always be in use in terminal. It's one of the most Linux basic commands. Using this is easy. Just type the name of the folder you want to go in from your current directory. If you want to go up just do it by giving double dots (..) as the parameter.

Let's say I'm in /home directory and I want to move in usr directory which is always in the /home. Here is how I can use cd commands -

```
/home $ cd usr
/home/usr $
```

##4. mkdir

Just changing directory is still incomplete. Sometimes you want to create a new folder or subfolder. You can use mkdir command to do that. Just give your folder name after mkdir command in your terminal.

```~$ mkdir folderName```

## 5. cp

copy-and-paste is the important task we need to do to organize our files. Using cp will help you to copy-and-paste the file from terminal. First, you determine the file you want to copy and type the destination location to paste the file.

```$ cp src des```

Note: If you're copying files into the directory that requires root permission for any new file, then you'll need to use sudo command.

## 6. rm

rm is a command to remove your file or even your directory. You can use -f if the file need root permission to be removed. And also you can use -r to do recursive removal to remove your folder.

```$ rm myfile.txt```

## 7. apt-get

This command differs distro-by-distro. In Debian based Linux distributions, to install, remove and upgrade any package we've Advanced Packaging Tool (APT) package manager. The apt-get command will help you installing the software you need to run in your Linux. It is a powerful command-line tool which can perform installation, upgrade, and even removing your software.

In other distributions, such as Fedora, Centos there are different package managers. Fedora used to have yum but now it has dnf. 

```
$ sudo apt-get update
$ sudo dnf update
```

## 8. grep

You need to find a file but you don't remember its exact location or the path. grep will help you to solve this problem. You can use the grep command to help finding the file based on given keywords.

```$ grep user /etc/passwd```

## 9. cat

As a user, you often need to view some of text or code from your script. Again, one of the Linux basic commands is cat command. It will show you the text inside your file.

```$ cat CMakeLists.txt```

## 10. poweroff

The last one is poweroff. Sometimes you need to poweroff directly from your terminal. This command will do the task. Don't forget to add sudo at the beginning of the command since it needs root permission to execute poweroff.

```$ sudo poweroff```

That's all :)
