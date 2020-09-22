# extra tools
[ -f $HOME/.env.sh ] && source $HOME/.env.sh

## Python
sudo pip install -r config/requirements

## Node
NODE_VERSION=v12.14.0
NODE_PLATFORM=linux-x64

cd $LOCALBIN

## ripgrep
RG_VERSION=12.1.1

if [ ! -f rg ]
then
    wget https://github.com/BurntSushi/ripgrep/releases/download/${RG_VERSION}/ripgrep-${RG_VERSION}-x86_64-unknown-linux-musl.tar.gz
    tar -xvf ripgrep-${RG_VERSION}-x86_64-unknown-linux-musl.tar.gz
    mv ripgrep-${RG_VERSION}-x86_64-unknown-linux-musl/rg .
    rm -rf ripgrep-${RG_VERSION}-x86_64-unknown-linux-musl
    rm ripgrep-${RG_VERSION}-x86_64-unknown-linux-musl.tar.gz
fi

if [ ! -d node ]
then
    wget https://npm.taobao.org/mirrors/node/${NODE_VERSION}/node-${NODE_VERSION}-${NODE_PLATFORM}.tar.gz
    tar -xvf node-${NODE_VERSION}-${NODE_PLATFORM}.tar.gz
    mv node-${NODE_VERSION}-${NODE_PLATFORM} node
    rm node-${NODE_VERSION}-${NODE_PLATFORM}.tar.gz
fi

## fzf
if [ -f ~/.fzf.zsh ]
then
    echo "fzf installed"
else
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install
fi

## tldr
npm install -g tldr --registry https://registry.npm.taobao.org

## diff-so-fancy
npm install -g diff-so-fancy --registry https://registry.npm.taobao.org
