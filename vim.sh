VERSION=v0.4.3
BIN_PATH=/usr/bin/nvim

sudo rm ${BIN_PATH}
sudo curl -fLo ${BIN_PATH} https://github.com/neovim/neovim/releases/download/${VERSION}/nvim.appimage
sudo chmod a+x ${BIN_PATH}

git clone git://github.com/lycheng/dot-vimrc.git ~/.vim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim .config/nvim
ln -s ~/.vimrc .config/nvim/init.vim

sudo update-alternatives --install /usr/bin/vi vi ${BIN_PATH} 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim ${BIN_PATH} 60
sudo update-alternatives --config vim
sudo update-alternatives --install /usr/bin/editor editor ${BIN_PATH} 60
sudo update-alternatives --config editor
