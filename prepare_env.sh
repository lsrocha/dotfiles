#!/bin/bash

SRC_DIR=$(pwd)/config
CONFIG_DIR=$HOME/.config

echo 'LOADING GIT SETTINGS'
git config --global core.fileMode false
git config --global core.excludesfile $SRC_DIR/git/gitignore_global

if [[ ! -e $HOME/.bash_aliases ]]; then
    echo 'CREATING BASH ALIASES'
    ln -s $SRC_DIR/bash/aliases $HOME/.bash_aliases
else
    echo 'BASH ALIASES ALREADY DEFINED'
fi

if [[ ! -d $HOME/.vim ]]; then
    echo 'LOADING VIM SETTINGS'
    ln -s $SRC_DIR/vim $HOME/.vim
else
    echo 'VIM DIRECTORY ALREADY EXISTS'
fi

if [[ ! -d $CONFIG_DIR ]]; then
     mkdir $CONFIG_DIR
fi

if [[ ! -d $CONFIG_DIR/terminator ]]; then
    echo 'LOADING TERMINATOR SETTINGS'
    ln -s $SRC_DIR/terminator $CONFIG_DIR/terminator
else
    echo 'TERMINATOR CONFIG ALREADY EXISTS'
fi
