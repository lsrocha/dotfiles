#!/bin/bash

CURRENT_VAR=$(pwd)

if [[ ! -e $HOME/.gitignore_global ]]; then
    echo 'CREATING GIT IGNORE'
    ln -s $CURRENT_VAR/.gitignore_global $HOME/.gitignore_global
else
    echo 'GIT IGNORE ALREADY EXISTS'
fi

if [[ ! -e $HOME/.bash_aliases ]]; then
    echo 'CREATING BASH ALIASES'
    ln -s $CURRENT_VAR/.bash_aliases $HOME/.bash_aliases
else
    echo 'BASH ALIASES ALREADY DEFINED'
fi

if [[ ! -d $HOME/.vim ]]; then
    echo 'LOADING VIM PLUGINS'
    ln -s $CURRENT_VAR/.vim $HOME/.vim
else
    echo 'VIM DIRECTORY ALREADY EXISTS'
fi

if [[ ! -e $HOME/.vimrc ]]; then
    echo 'LOADING VIM SETTINGS'
    ln -s $CURRENT_VAR/.vimrc $HOME/.vimrc
else
    echo 'VIMRC ALREADY EXISTS'
fi
