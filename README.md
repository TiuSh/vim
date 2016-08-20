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
$ ln -s ~/.tiush-vim/.ctags ~/.ctags
```

* Set up vim-plug:

`$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

* Install Plugins:

`$ vim +PlugInstall +qall`

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
$ ln -s ~/.tiush-vim/.ctags ~/.ctags
```

* Set up vim-plug:

`$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

* Install Plugins:

`$ vim +PlugInstall +qall`

* Set up [Solarized theme](http://ethanschoonover.com/solarized)
