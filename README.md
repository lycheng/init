# Init

Personal Linux dot files, tested in

* Kubuntu 20.04 LTS
* Ubuntu 20.04 LTS with WSL2

Base
---

tools

* Tmux
* Neovim
* fzf
* tldr
* ripgrep

languages environment

* Node
* Golang
* Java
* Python
* Rust
* OCaml


```
# to set zsh as default shell
chsh -s `/bin/zsh`
```

tmux
---

prefix `ctrl + x`

常用快捷键

### Pane

| 快捷键 | 用法  | 备注 |
|--------|-------|------|
| prefix + - | 分成上下两个 pane |      |
| prefix + | | 分成左右两个 pane |      |
| prefix + [h j k l] | 选择 pane |      |
| prefix + [方向键] | 按方向改变 pane 大小 | 每次 10 个单位 |
| prefix + x | 删掉当前的 pane | 需要确认 |
| prefix + z | toggle pane zoom | |
| prefix + space | toggle between layouts | |
| prefix + t | 当前 pane 显示时间 | |

### Window

| 快捷键 | 用法  | 备注 |
|--------|-------|------|
| prefix + [0 ~ 9] | 选择相应的 window |      |
| prefix + x | 删掉当前的 window | 需要确认 |
| prefix + w | 列出当前的 window | |

### Edit

| 快捷键 | 用法  | 备注 |
|--------|-------|------|
| prefix + [ | 进入复制模式 | vi mode |
| prefix + ] | 粘贴刚复制的东西 | |

- 复制模式下按 enter 进行复制
- 复制模式下按 y 复制到系统粘贴版
- 需要 xclip 支持

zsh
---

使用 [zinit](https://github.com/zdharma/zinit) 来配置 console

Node
---

bin 路径为 `$HOME/bin/node`

Python
---

参考 [Tips and Tricks](http://virtualenvwrapper.readthedocs.io/en/latest/tips.html)

```
# 在 ~/.virtualenvs/postactivate 中加上
PS1="$_OLD_VIRTUAL_PS1"
_OLD_RPROMPT="$RPROMPT"
RPROMPT="%{${fg_bold[white]}%}(env: %{${fg[green]}%}`basename \"$VIRTUAL_ENV\"`%{${fg_bold[white]}%})%{${reset_color}%} $RPROMPT"

# 在 ~/.virtualenvs/postdeactivate 中加上
RPROMPT="$_OLD_RPROMPT"
```

Other tips
---

### fzf

git: https://github.com/junegunn/fzf

`Ctrl + R` 用于命令的模糊搜索

### SSH

```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

### 键盘大写锁定键

```
setxkbmap -layout us -option ctrl:nocaps
```

上述的代码重启后失效，也可通过 tweak 去修改


### Git

```
git config --global user.name 'lycheng'
git config --global user.email example@example.com
git config --global core.editor vim

# Git commit template
# from: https://juejin.im/post/5afc5242f265da0b7f44bee4
git config --global commit.template ~/.git-commit-template
```

### Rust

```
# https://www.rust-lang.org/tools/install
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

### OCaml

```
# https://ocaml.org/docs/install.html
sudo apt install ocaml

# environment setup
opam init
eval $(opam env)
# install given version of the compiler
opam switch create 4.12.0
eval $(opam env)
# check you got what you want
which ocaml
ocaml -version
```

Extra Tools
---

* tldr - https://github.com/tldr-pages/tldr
* httpie - https://httpie.org/
* fzf - https://github.com/junegunn/fzf.git
