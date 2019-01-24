sudo add-apt-repository ppa:neovim-ppa/stable

sudo apt update
sudo apt upgrade

sudo apt install git
sudo apt install python-dev
sudo apt install python-pip
sudo apt install silversearcher-ag
sudo apt install xclip

# oh my zsh
sudo apt install zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# tmux
sudo apt install tmux

# neovim
sudo apt install neovim
sudo apt install python-neovim
sudo apt install python3-neovim
git clone git://github.com/lycheng/dot-vimrc.git ~/.vim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim .config/nvim
ln -s ~/.vimrc .config/nvim/init.vim

pip install --user --upgrade pynvim
pip install --user --upgrade neovim

# vim requirements
sudo apt install ack-grep ctags
sudo apt install CMake
sudo apt install nodejs
sudo apt install npm
sudo npm install -g jsonlint
sudo npm install -g csslint
sudo npm install -g jshint
sudo ln -s /usr/bin/nodejs /usr/bin/node
cp files/flake8 $HOME/.config/flake8

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
