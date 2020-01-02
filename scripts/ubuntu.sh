sudo add-apt-repository ppa:neovim-ppa/unstable

# install tools from apt
sudo apt update && sudo apt upgrade
sudo apt install git curl \
    python-dev python-pip \
    xclip zsh tmux httpie \
    exuberant-ctags cmake -y

# oh my zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
