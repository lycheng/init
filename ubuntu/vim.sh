VERSION=v0.4.4
BIN_PATH=/usr/bin/nvim

if [ ! -f "/usr/bin/nvim" ]
then
    curl -fLo /tmp/nvim.tar.gz https://github.com/neovim/neovim/releases/download/${VERSION}/nvim-linux64.tar.gz
    tar -xvf /tmp/nvim.tar.gz -C /tmp
    sudo mv /tmp/nvim-linux64/bin/nvim $BIN_PATH && sudo chmod a+x /usr/bin/nvim
fi

if [ ! -d "$HOME/.vim" ]
then
    git clone git@github.com:lycheng/dot-vimrc.git ~/.vim
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    ln -s $HOME/.vim/vimrc $HOME/.vimrc
    ln -s $HOME/.vim $HOME/.config/nvim
    ln -s $HOME/.vimrc $HOME/.config/nvim/init.vim

    sudo update-alternatives --install /usr/bin/vi vi ${BIN_PATH} 60
    sudo update-alternatives --config vi
    sudo update-alternatives --install /usr/bin/vim vim ${BIN_PATH} 60
    sudo update-alternatives --config vim
    sudo update-alternatives --install /usr/bin/editor editor ${BIN_PATH} 60
    sudo update-alternatives --config editor
fi
