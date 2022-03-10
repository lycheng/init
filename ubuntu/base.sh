#!/bin/bash

# init symbolic links
for f in 'zshrc' 'tmux.conf' 'env' 'alias' 'git-commit-template'
do
    [ -f $HOME/.$f ] && rm $HOME/.$f
    ln -s `pwd`/config/$f $HOME/.$f
done

# For WSL2
[ "$WSLENV" ] && ln -s `pwd`/config/wsl2.env $HOME/.wsl2.env

source $HOME/.env

# init folders
mkdir -p $HOME/bin/virtualenv
mkdir -p $HOME/projects
mkdir -p $HOME/.config

sudo apt update && sudo apt upgrade
sudo apt install git curl exuberant-ctags cmake \
    python3-dev python3-pip python-is-python3 \
    xclip zsh tmux httpie flameshot \
    ocaml \
    autojump \
    -y

# pip symbolic links
if [ ! -f /usr/bin/pip ]
then
    sudo ln -s /usr/bin/pip3 /usr/bin/pip
fi

# zinit
if [ ! -d $HOME/.zinit ]
then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
fi
