CUR_DIR=`pwd`
ln -s $CUR_DIR/files/zshrc ~/.zshrc
ln -s $CUR_DIR/files/tmux.conf ~/.tmux.conf

sudo pip2 install -r files/pip
sh files/ubuntu.sh
