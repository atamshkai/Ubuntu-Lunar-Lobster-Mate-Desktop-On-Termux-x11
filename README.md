# Ubuntu-Lunar-Lobster-Mate-Desktop-On-Termux-x11

This is a preinstalled Ubuntu Mate Desktop.For Android 12 & 13,before you install it,disable phantom process killer. 

[Here](https://github.com/atamshkai/Phantom-Process-Killer/tree/main) 

# Preivew

![](https://raw.githubusercontent.com/atamshkai/Ubuntu-Lunar-Lobster-Mate-Desktop-On-Termux-x11/main/lunar-mate.png)

# To Do

### Install zsh 
``` 
pkg up -y && pkg i -y zsh wget
wget https://github.com/atamshkai/Termux-Zsh/raw/main/zsh.tar.xz 
tar -xvJf zsh.tar.xz && mv ~/zsh/.* ~/
rm -rf ~/zsh
chsh -s zsh 
```

#### For Sound, 
``` 
echo "killall pulseaudio &>/dev/null" >>~/.zshrc 
``` 
```
echo "pulseaudio --start --exit-idle-time=-1; pacmd load-module module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" >>~/.zshrc 
```

#### Give Storage Permission

``` 
termux-setup-storage 
```

## Install Lunar Lubster Mate Desktop
```
wget https://raw.githubusercontent.com/atamshkai/Ubuntu-Lunar-Lobster-Mate-Desktop-On-Termux-x11/main/lunar-mate.sh && bash lunar-mate.sh
```

#### Login again to terminal 
```
exit
```
Before login to proot,start termux-x11 first. 
``` 
termux-x11 :1 
```

#### Then,open another session & login to lunar-mate
```
lunar-mate
```

#### Start Mate Desktop
```
mate
```

## Termux 
[Download](https://github.com/termux/termux-app/releases/download/v0.118.0/termux-app_v0.118.0+github-debug_universal.apk) 

## Termux-x11 
[Download](https://archive.org/download/termux-x11/app-universal-debug.apk) 

## Termux-x11 Custom Resolution
1920:1080
