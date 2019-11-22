ln -s `pwd`/files/zshrc $HOME/.zshrc
ln -s `pwd`/files/tmux.conf $HOME/.tmux.conf

ln -s `pwd`/scripts/env.sh $HOME/.env.sh
ln -s `pwd`/scripts/alias.sh $HOME/.alias.sh

sh scripts/ubuntu.sh
sh scripts/git.sh

mkdir -p $HOME/bin/virtualenv
mkdir -p $HOME/bin/node
mkdir -p $HOME/projects
mkdir -p $HOME/.config

sudo pip install -r files/requirements
