#!/bin/bash
# install script using  https://github.com/helmuthdu/aui
#rotate

read -r -p "Rotate?" rotate
case "$rotate" in 
	[yY])
	echo 3 >  /sys/class/graphics/fbcon/rotate_all
	;;
	*)
	 echo not rotated
		;;
esac


# first, resize cowspace patririon

mount -o remount,size=2G /run/archiso/cowspace

# then Prepare git

pacman -Sy git --noconfirm 

# get script

git clone git://github.com/novmar/aui

cd aui
./fifo
