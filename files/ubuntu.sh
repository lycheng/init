sudo add-apt-repository ppa:neovim-ppa/stable

sudo apt update
sudo apt upgrade

sudo apt install git
sudo apt install python-dev
sudo apt install python-pip
sudo apt install xclip

# oh my zsh
sudo apt install zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# tmux
sudo apt install tmux

# neovim
sudo apt install neovim
git clone git://github.com/lycheng/dot-vimrc.git ~/.vim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim .config/nvim
ln -s ~/.vimrc .config/nvim/init.vim

# vim requirements
sudo apt install ack-grep ctags CMake

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
