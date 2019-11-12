ln -s `pwd`/files/zshrc ~/.zshrc
ln -s `pwd`/files/tmux.conf ~/.tmux.conf


sh scripts/ubuntu.sh
sh scripts/git.sh

mkdir -p $HOME/bin/virtualenv
mkdir -p $HOME/bin/node
mkdir -p $HOME/projects
mkdir -p $HOME/.config

sudo pip install -r files/requirements
npm install -g tldr
