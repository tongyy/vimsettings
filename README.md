# vimsettings
This is my Vim settings

## Prerequisite
* Install Homebrew
```shell
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
* make and cmake 4.2+
```shell
brew reinstall make
brew install cmake
```

* YouCompleteMe: requires Vim 7.4.1578+.
if you updated Vim, it might get some errors like (Warning: Failed to set locale category)
put this line into .bash_profile
```shell
export LC_ALL=en_US.UTF-8
```
ycm server error
```shell
~/.vim/bundle/YouCompleteMe/install.py
```

## There are three steps as follows
* Install vundle and copy vimrc to ~/. 
```shell
sh install.sh
```

* Run PluginInstall of vundle command in Vim

```shell
:PluginInstall
```

* Compile Command-T 

```shell
sh build.sh
```

## CMD
<Ctrl + n> [relative line number :NumberToggle]

<fn + F2> file explore :NERDTreeToggle

<fn + F3> stop auto indenting :pastetoggle

<fn + F4> replace two Spaces to Tab 

\t [file name search]

:Ag $seachtext  [global text-search AG]
