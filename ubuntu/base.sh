#!/bin/bash

# init symbolic links
for f in 'zshrc' 'tmux.conf' 'env' 'alias' 'git-commit-template'
do
    [ -f $HOME/.$f ] && rm $HOME/.$f
    ln -s `pwd`/config/$f $HOME/.$f
done

source $HOME/.env

# init folders
mkdir -p $HOME/bin/virtualenv
mkdir -p $HOME/projects
mkdir -p $HOME/.config

sudo apt update && sudo apt upgrade
sudo apt install git curl exuberant-ctags cmake \
    python3-dev python3-pip xclip zsh tmux httpie flameshot -y

# pip symbolic links
if [ ! -f /usr/bin/pip ]
then
    sudo ln -s /usr/bin/pip3 /usr/bin/pip
fi

# oh my zsh
if [ ! -d $HOME/.oh-my-zsh ]
then
    git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
fi
