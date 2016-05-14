sudo apt-apt update
sudo apt-get upgrade

sudo apt-get install git
sudo apt-get install python-pip
sudo apt-get install python-MySQLdb
sudo apt-get install silversearcher-ag
sudo apt-get install xclip

# oh my zsh
sudo apt-get install zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
chsh -s `/bin/zsh`

# tmux
sudo apt-get install tmux

# vim
sudo apt-get install vim-nox
git clone git://github.com/lycheng/dot-vimrc.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

sudo apt-get install ack-grep ctags
sudo apt-get install CMake
sudo apt-get install nodejs
sudo apt-get install npm
sudo apt-get install python-dev
sudo npm install -g jsonlint
sudo npm install -g csslint
sudo npm install -g jshint
sudo ln -s /usr/bin/nodejs /usr/bin/node


# golang
sudo apt-get install golang
sudo apt-get install golang-go.tools
