# extra tools

## Node
VERSION=v12.14.0
PLATFORM=linux-x64

cd $LOCALBIN
wget https://npm.taobao.org/mirrors/node/${VERSION}/node-${VERSION}-${PLATFORM}.tar.gz
tar -xvf node-${VERSION}-${PLATFORM}.tar.gz
mv node-${VERSION}-${PLATFORM} node

## Cargo
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

## fzf
if [ -f ~/.fzf.zsh ]
then
    echo "fzf installed"
else
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install
fi

## tldr
npm install -g tldr
