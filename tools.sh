# extra tools
[ -f ~/.env.sh ] && source $HOME/.env.sh

## Python
sudo pip install -r files/requirements

## Node
NODE_VERSION=v12.14.0
NODE_PLATFORM=linux-x64

wget https://npm.taobao.org/mirrors/node/${NODE_VERSION}/node-${NODE_VERSION}-${NODE_PLATFORM}.tar.gz
tar -xvf node-${NODE_VERSION}-${NODE_PLATFORM}.tar.gz
mv node-${NODE_VERSION}-${NODE_PLATFORM} node
rm node-${NODE_VERSION}-${NODE_PLATFORM}.tar.gz

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
npm install -g tldr --registry https://registry.npm.taobao.org
npm install -g diff-so-fancy --registry https://registry.npm.taobao.org

## ripgrep
RG_VERSION=12.1.1
wget https://github.com/BurntSushi/ripgrep/releases/download/${RG_VERSION}/ripgrep-${RG_VERSION}-x86_64-unknown-linux-musl.tar.gz
tar -xvf ripgrep-${RG_VERSION}-x86_64-unknown-linux-musl.tar.gz
mv ripgrep-${RG_VERSION}-x86_64-unknown-linux-musl/rg .
rm -rf ripgrep-${RG_VERSION}-x86_64-unknown-linux-musl
rm ripgrep-${RG_VERSION}-x86_64-unknown-linux-musl.tar.gz
