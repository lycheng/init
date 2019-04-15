ln -s `pwd`/files/zshrc ~/.zshrc
ln -s `pwd`/files/tmux.conf ~/.tmux.conf

sudo pip install -r files/requirements
sh files/ubuntu.sh

mkdir -p $HOME/bin/virtualenv
mkdir -p $HOME/bin/node
mkdir -p $HOME/projects
mkdir -p $HOME/.config

source ~/.zshrc

# vim venv init
mkvirtualenv nvim
