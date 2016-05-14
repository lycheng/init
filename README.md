# init
personal linux init

## Terminal

Oh-My-Zsh + Tmux

在所有的更新结束之后执行下面的命令修改默认的 shell

```
chsh -s `/bin/zsh`
```

### Tmux

现在的 prefix 是 ctrl + x

常用快捷键

#### pane
```
prefix + % # 分成上下两个 pane
prefix + " # 分成左右两个 pane

prefix + [h j k l] # 选择 pane

prefix + [方向键]  # 按方向改变 pane 大小
```

#### 复制粘贴

```
prefix + [ # 进入复制模式

# 复制模式下按 enter 进行复制
# 复制模式下按 y 复制到系统粘贴版
# 需要 xclip 支持

prefix + ] # 粘贴刚所选的东西
```

## Vim

目前在用 [dot-vimrc](https://github.com/humiaozuzu/dot-vimrc) fork 出来的自己修改的 [版本](https://github.com/lycheng/dot-vimrc)

也可参考 [spf13](http://vim.spf13.com/#install)

上述都使用 [Vundle](http://github.com/gmarik/vundle) 进行 vim 的插件管理，clone 相应代码之后，设置好 vim 配置文件，在 vim 下执行

```
# 安装
BundleInstall

# 更新
BundleInstall!
```

### YCM

使用 [YouCompleteMe](http://vim.spf13.com/#instal://github.com/Valloric/YouCompleteMe) 的代码提示功能

```
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer --gocode-completer
```

## SSH

```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

## 键盘大写锁定键

```
setxkbmap -layout us -option ctrl:nocaps
```
上述的代码重启后失效，也可通过 tweak 去修改


```
sudo apt-get install gnome-tweak-tool -y && gnome-tweak-tool
```
Typing -> Caps Lock key behavior

## GIT

```
git config --global user.name 'lycheng'
git config --global user.email example@example.com
git config --global core.editor vim
```
