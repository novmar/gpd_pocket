$!/bin/bash
# install script using  https://github.com/helmuthdu/aui


# first, resize cowspace patririon

mount -o remount,size=2G /run/archiso/cowspace

# then Prepare git

pacman -Sy git

# get script

git clone git://github.com/helmuthdu/aui

