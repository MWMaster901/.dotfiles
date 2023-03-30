#!/bin/bash

OPER=$(uname)
if (( $OPER != Linux)); then
	echo "Operating system not linux" >> linuxsetup.log
	exit
fi
#This checks to make sure the operating system is linux

mkdir -p ~/.TRASH
#Makes a .TRASH directory in the home directory if there isn't one already

touch -c ~/.vimrc
mv ~/.vimrc ~/.bup_vimrc
echo ".vimrc file has been changed to .bup_vimrc" >> linuxsetup.log
#Changes the .vimrc file in the home directory to .bup_vimrc

cat etc/vimrc > ~/.vimrc
#Redirects the contents of vimrc in etc to .vimrc in home

echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
