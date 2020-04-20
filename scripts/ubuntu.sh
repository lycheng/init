# install tools from apt
sudo apt update && sudo apt upgrade
sudo apt install \
    git curl \
    exuberant-ctags cmake \
    python-dev python-pip \
    python3-dev python3-pip \
    xclip zsh tmux httpie flameshot \
    -y

# oh my zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
