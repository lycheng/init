# extra tools

## Node
VERSION=v12.14.0
PLATFORM=linux-x64

cd $LOCALBIN
wget https://npm.taobao.org/mirrors/node/${VERSION}/node-${VERSION}-${PLATFORM}.tar.gz
tar -xvf node-${VERSION}-${PLATFORM}.tar.gz
mv node-${VERSION}-${PLATFORM} node

## fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

## tldr
npm install -g tldr

## Rust
mkdir $CARGO_HOME -p
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
