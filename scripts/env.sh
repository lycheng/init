export EDITOR=nvim

# Local bin path config
source $ZSH/oh-my-zsh.sh
export LOCALBIN=$HOME/bin
export PATH="$LOCALBIN:$PATH"

# Golang
export GOPATH=$HOME/projects/go
export GOROOT=$LOCALBIN/go
export PATH="$GOROOT/bin:$GOPATH/bin:$PATH"
export GO111MODULE=auto
export GOPROXY=https://goproxy.io
# export GOPROXY=http://mirrors.aliyun.com/goproxy/

# NodeJS
export NODEJSPATH=$LOCALBIN/node/bin
export PATH="$NODEJSPATH:$PATH"

# Clang
export CLANGPATH=$LOCALBIN/clang/bin
export PATH="$CLANGPATH:$PATH"

# Java
export JAVA_HOME=$LOCALBIN/jdk
export JRE_HOME=$LOCALBIN/jdk/jre
export MAVEN_HOME=$LOCALBIN/maven
export SPRING_HOME=$LOCALBIN/spring
export PATH="$JAVA_HOME/bin:$MAVEN_HOME/bin:$SPRING_HOME/bin:$PATH"

# Groovy
export GROOVY_HOME=$LOCALBIN/groovy
export PATH="$GROOVY_HOME/bin:$PATH"

# Rust
export CARGO_HOME=$LOCALBIN/cargo
export PATH="$CARGO_HOME/bin:$PATH"

# protoc
export PROTOC_BIN=$LOCALBIN/protoc/bin
export PATH="$PROTOC_BIN:$PATH"

# SNAP bin
export PATH="/snap/bin:$PATH"

# Python virtualenvwrapper
export WORKON_HOME=$LOCALBIN/virtualenv
source /usr/local/bin/virtualenvwrapper.sh

# PIP user path
export PIP_USER_BIN=$HOME/.local/bin
export PATH="$PIP_USER_BIN:$PATH"
