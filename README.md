init
===

personal linux config @ ubuntu 18.04 LTS

简述
---

包含 Zsh + Tmux + Vim + Python + Golang 环境

在所有的更新结束之后执行下面的命令修改默认的 shell

```
chsh -s `/bin/zsh`
```

tmux
---

prefix 是 `ctrl + x`

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

使用 [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) 来管理 zsh 配置文件

目前设置了几个环境变量

1. Golang 的 `$GOPATH`
2. virtualenvwrapper 的 `$WORKON_HOME`

Node.js
---

现在使用的是下载然后编译安装的方式，路径为 `$HOME/bin/node`

```
git clone https://github.com/nodejs/node
cd node
./configure --prefix=$HOME/bin/node
make install

cd ..
git clone https://github.com/npm/npm
make install
```

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

### GNOME

```
# 设置 GNOME 只在当前的 workspace 切换程序
gsettings set org.gnome.shell.app-switcher current-workspace-only true
```


### Powerline

```
# 安装字体
sudo apt-get install fonts-powerline
```

Extra Tools
---

 * tldr - https://github.com/tldr-pages/tldr
 * httpie - https://httpie.org/
 * fzf - https://github.com/junegunn/fzf.git
