ln -s `pwd`/files/zshrc ~/.zshrc
ln -s `pwd`/files/tmux.conf ~/.tmux.conf

sudo pip install -r files/pip
sh files/ubuntu.sh

mkdir -p $HOME/bin/virtualenv
mkdir -p $HOME/projects
mkdir -p $HOME/.config
