## OS X

* Install Hombrew:

`$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

* Install Vim / CMake / Exuberant CTags / The Silver Searcher:

`$ brew install vim cmake ctags the_silver_searcher`

* Install [Node.js](https://nodejs.org/)

* Set up ESLint:

`$ npm install -g eslint`

* Clone this repo:

`$ git clone https://github.com/TiuSh/vim.git ~/.tiush-vim`

* Link files:

```
$ ln -s ~/.tiush-vim/.vimrc ~/.vimrc
$ ln -s ~/.tiush-vim/.tern-config ~/.tern-config
```

* Set up Vundle:

`$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

* Install Plugins:

`$ vim +PluginInstall +qall`

* Set up YouCompleteMe:

```
$ cd ~/.vim/bundle/YouCompleteMe
$ ./install.py
```

* Set up Tern:

```
$ cd ~/.vim/bundle/tern_for_vim
$ npm install
```

* Set up [Solarized theme](http://ethanschoonover.com/solarized)

## Linux (Ubuntu / Debian)

* Install Git / Python / CMake / Node.js / Vim / Exuberant CTags / The Silver Searcher:

`$ sudo apt-get install git python-dev cmake nodejs vim ctags silversearcher-ag`

* Set up ESLint:

`$ npm install -g eslint`

* Clone this repo:

`$ git clone https://github.com/TiuSh/vim.git ~/.tiush-vim`

* Link files:

```
$ ln -s ~/.tiush-vim/.vimrc ~/.vimrc
$ ln -s ~/.tiush-vim/.tern-config ~/.tern-config
```

* Set up Vundle:

`$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

* Install Plugins:

`$ vim +PluginInstall +qall`

* Set up YouCompleteMe:

```
$ cd ~/.vim/bundle/YouCompleteMe
$ ./install.py
```

* Set up Tern:

```
$ cd ~/.vim/bundle/tern_for_vim
$ npm install
```

* Set up [Solarized theme](http://ethanschoonover.com/solarized)
