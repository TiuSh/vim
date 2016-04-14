## OS X

1. Install Hombrew:

`$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

2. Install Vim / CMake / Exuberant CTags / The Silver Searcher:

`$ brew install vim cmake ctags the_silver_searcher`

3. Install [Node.js](https://nodejs.org/)

4. Set up ESLint:

`$ npm install -g eslint`

5. Clone this repo:

`$ git clone https://github.com/TiuSh/vim.git ~/.tiush-vim`

6. Link files:

```
$ ln -s ~/.tiush-vim/.vimrc ~/.vimrc
$ ln -s ~/.tiush-vim/.tern-config ~/.tern-config
```

7. Set up Vundle:

`$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

8. Install Plugins:

`$ vim +PluginInstall +qall`

9. Set up YouCompleteMe:

```
$ cd ~/.vim/bundle/YouCompleteMe
$ ./install.py
```

10. Set up Tern:

```
$ cd ~/.vim/bundle/tern_for_vim
$ npm install
```

11. Set up [Solarized theme](http://ethanschoonover.com/solarized)
