#!/bin/bash

rm ~/.vimrc
#Removes the .vimrc file from the home directory

sed -i 's/source ~\/\.dotfile\/bashrc_custom/ /g' ~/.bashrc
#Find the source... line in .bashrc and replaces it with nothing

rm -r ~/.TRASH
