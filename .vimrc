set nocompatible

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins (vim-plug)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

" My plugins

" IDE
Plug 'scrooloose/nerdtree'
" Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'ctrlpvim/ctrlp.vim'
" Plug 'lokikl/vim-ctrlp-ag' TODO: Test
" Plug 'fisadev/vim-ctrlp-cmdpalette' TODO: Test
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
" Plug 'haya14busa/vim-asterisk' TODO: Test
Plug 'bkad/CamelCaseMotion'
Plug 'tpope/vim-repeat'
Plug 'frankier/neovim-colors-solarized-truecolor-only'
" Plug 'arecarn/crunch.vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'easymotion/vim-easymotion'
Plug 'svermeulen/vim-easyclip'
" Plug 'vimlab/split-term.vim'
Plug 'neovim/python-client'
Plug 'terryma/vim-multiple-cursors'
" Plug 'editorconfig/editorconfig-vim' TODO: Test
" Plug 'Shougo/context_filetype.vim' TODO: Test
" Plug 'Konfekt/FastFold' TODO: Test
" Plug 'Yggdroot/indentLine' TODO: Test
" Plug 'ryanoasis/vim-devicons'
" Plug 'itchyny/calendar.vim' TODO: Test
" Plug 'ZSaberLv0/ZFVimIndentMove' TODO: Test
Plug 'mhinz/vim-startify'
" Plug 'airblade/vim-rooter'
" Plug 'wakatime/vim-wakatime'
Plug 'tpope/vim-unimpaired'
" Plug 'tpope/vim-dispatch'

" VCS (Git/SVN/...)
Plug 'tpope/vim-fugitive'
" Plug 'lambdalisue/gina.vim' TODO: Test
Plug 'jreybert/vimagit'
Plug 'airblade/vim-gitgutter'
" Plug 'Xuyuanp/nerdtree-git-plugin' TODO: Test
Plug 'junegunn/gv.vim'

" All languages
Plug 'neomake/neomake'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
" Plug 'itmammoth/doorboy.vim' TODO: Test
Plug 'junegunn/vim-easy-align'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'Shougo/echodoc.vim' TODO: Test
" Plug 'Shougo/neoinclude.vim' TODO: Test
" Plug 'prabirshrestha/asyncomplete.vim' TODO: Test
Plug 'SirVer/ultisnips'
" Plug 'Shougo/neosnippet.vim' TODO: Test
" Plug 'Shougo/neosnippet-snippets' TODO: Test
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-expand-region'
Plug 'vim-scripts/argtextobj.vim'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
Plug 'glts/vim-textobj-comment'
" Plug 'gcmt/wildfire.vim' TODO: Test
Plug 'TiuSh/vim-toggline'
" Plug 'AndrewRadev/switch.vim' TODO: Test

" Debuggers
Plug 'joonty/vdebug'

" Markdown
Plug 'gabrielelana/vim-markdown', { 'for': 'markdown' }
Plug 'shime/vim-livedown', { 'for': 'markdown' }

" HTML
Plug 'mattn/emmet-vim'

" Twig
Plug 'lumiliet/vim-twig', { 'for': 'twig' }

" CSS
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'cakebaker/scss-syntax.vim', { 'for': 'css' }

" Javascript
Plug 'jaawerth/neomake-local-eslint-first'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'elzr/vim-json'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install -g tern && npm install' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'mxw/vim-jsx', { 'for': 'javascript' }
Plug 'justinj/vim-react-snippets'
Plug 'jungomi/vim-mdnquery'

" CoffeeScript
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }

" Typescript
" Plug 'HerringtonDarkholme/yats.vim'
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
Plug 'mhartington/deoplete-typescript', { 'for': 'typescript' }
Plug 'mhartington/vim-angular2-snippets'
Plug 'ianks/vim-tsx', { 'for': 'typescript' }

" PHP
" Plug 'phpvim/phpcd.vim', { 'for': 'php' , 'do': 'composer update' }

" Meteor
Plug 'cmather/vim-meteor-snippets'

" GraphQL
Plug 'jparise/vim-graphql'

" Haskell
Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
Plug 'eagletmt/ghcmod-vim', { 'for': 'haskell' }
Plug 'eagletmt/neco-ghc', { 'for': 'haskell' }

" Python
Plug 'zchee/deoplete-jedi', { 'for': 'python' }
Plug 'hynek/vim-python-pep8-indent', { 'for': 'python' }

" Ruby / Rails
Plug 'tek/vim-textobj-ruby'
Plug 'osyo-manga/vim-monster', { 'do': 'gem install rcodetools', 'for': 'ruby' }
Plug 'iurifq/ctrlp-rails.vim', { 'on': [
      \ 'CtrlPModels',
      \ 'CtrlPControllers',
      \ 'CtrlPViews',
      \ 'CtrlPLibs',
      \ 'CtrlPSpecs',
      \ 'CtrlPMigrations'
      \ ] }
Plug 'tpope/vim-rails', { 'on': [
      \ 'Rake',
      \ 'Rails',
      \ 'A',
      \ 'R',
      \ 'Emodel',
      \ 'Eview',
      \ 'Econtroller',
      \ 'Smodel',
      \ 'Sview',
      \ 'Scontroller',
      \ 'Vmodel',
      \ 'Vview',
      \ 'Vcontroller',
      \ 'Tmodel',
      \ 'Tview',
      \ 'Tcontroller',
      \ 'Rexctract'
      \ ] }

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable filetype plugins
filetype plugin indent on

" Sets how many lines of history VIM has to remember
set history=1000

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <silent> <leader>w :w!<cr>

" Open .vimrc file
nmap <silent> <leader>v :tabedit $MYVIMRC<cr>

" Reload file in current buffer
nmap <silent> <leader>e :e!<cr>

" Use the system clipboard by default
set clipboard=unnamed

" Allow per-project configuration file (.vimrc / .nvimrc)
set exrc

" Remove ex-mode mapping
nnoremap Q <nop>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set wildmenu

" Ignore files
set wildignore=*.o,*~,*.pyc                      " Compile
set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=.DS_Store                        " OSX
set wildignore+=*.obj,*.rbc,*.class,*.gem        " Disable output and VCS files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz " Disable archive files

" Show relative line numbers
set number
set relativenumber

" Show column number
set ruler

" Highlight current line
set cursorline

" Show incomplete command in lower right corner
set showcmd

" Hide mode (shown in status bar)
set noshowmode

" Command line height
set cmdheight=1

" Hide unused buffers
set hidden

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" When searching try to be smart about cases
set ignorecase
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Improves smoothness of redrawing
set ttyfast

" Enable mouse
if !has('nvim')
  set mouse=a
  set ttymouse=sgr
endif

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" vim-javascript plugin fix (only if VIM version is under 7.4 patch 1-7)
" set regexpengine=1

" Set utf8 as standard encoding
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Opens splits on right and below
set splitright
set splitbelow


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

" Solarized scheme options
let g:solarized_menu = 0
let g:solarized_contrast = "high"

" Uncomment if you don't use the Solarized palette in the terminal
" let g:solarized_termcolors = 256

" Color Scheme
set termguicolors
set background=dark
colorscheme solarized

" Maximum line length
set colorcolumn=80

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Cursor styling
let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 1
set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" No line break
set nolbr

set ai "Auto indent
set si "Smart indent
set nowrap "No wrap lines

" Show tabs & trailing spaces
set list
set listchars=""          " reset listchars
set listchars=tab:‣\      " display tabs with a sign
" set listchars+=nbsp:·     " display whitespaces with a dot
set listchars+=trail:·    " display trailing whitespaces with a dot
" set listchars+=eol:↵      " display EOL character
set listchars+=extends:»  " right wrap
set listchars+=precedes:« " left wrap

" Remove trailing spaces on save
autocmd BufWritePre * :%s/\s\+$//e

" PHP indentation
autocmd FileType php,*.twig setlocal shiftwidth=4 tabstop=4


""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<cr>
vnoremap <silent> # :call VisualSelection('b')<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Map <Space> to / (search)
" map <space> /

" Disable highlight when <leader><space> is pressed
map <silent> <leader><space> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Open split windows
map <C-s> :split<cr>
map <C-s>v :vsplit<cr>

" With terminal
map <C-s>t :split\|terminal<cr>
map <C-s>vt :vsplit\|terminal<cr>

" Close window
map <leader>q :close<cr>

" Close the current buffer
" map <leader>bc :BD<cr>

" Close all the buffers
map <leader>ba :%bdelete<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" With terminal
map <leader>tnt :tabnew\|terminal<cr>

map <A-h> gT
map <A-l> gt
map <C-1> 1gt
map <C-2> 2gt
map <C-3> 3gt
map <C-4> 4gt
map <C-5> 5gt
map <C-6> 6gt
map <C-7> 7gt
map <C-8> 8gt
map <C-9> 9gt

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%


""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap <Esc> in insert mode to "jk"
inoremap jk <Esc>

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

" Location list mapping
map gll :lopen<cr>
map glc :lclose<cr>
map gln :lnext<cr>
map glp :lprevious<cr>

" Open / Close Quickfix window
map gcc :copen<cr>
map gcl :cclose<cr>
map gcn :cnext<cr>
map gcp :cprevious<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Terminal mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('nvim')
  " Remap also in terminal mode
  tnoremap jk <C-\><C-n>

  " Move between windows when in terminal mode
  tnoremap <C-j> <C-\><C-n><C-w>j
  tnoremap <C-k> <C-\><C-n><C-w>k
  tnoremap <C-h> <C-\><C-n><C-w>h
  tnoremap <C-l> <C-\><C-n><C-w>l

  " Terminal ctrl commands
  tnoremap <leader>l <C-l>
  tnoremap <leader>c <C-c>

  " Automatically start insert mode when entering terminal window
  autocmd BufWinEnter,WinEnter term://* startinsert
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Filetypes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Consider .scss files as CSS
autocmd BufNewFile,BufRead *.scss setlocal filetype=scss.css

" Tsx files
autocmd BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx

" YAML files
autocmd BufNewFile,BufRead *.yaml,*.yml setlocal filetype=yaml

" Vagrantfile
autocmd BufNewFile,BufRead Vagrantfile setlocal filetype=ruby

" Axlsx-Rails view files
autocmd BufNewFile,BufRead *.axlsx setlocal filetype=ruby


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => The Silver Searcher
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Define :AgCmd command
  " command -nargs=+ -complete=file -bar AgCmd silent! grep! <args>|cwindow|redraw!

  " Open search command
  " nnoremap <leader>g :AgCmd<SPACE>

  " Find TODOs comments
  noremap <leader>td :AgCmd TODO<cr>
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Omicomplete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType php setlocal omnifunc=phpcd#CompletePHP
" autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vimgrep searching
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" When you press <leader>r you can search and replace the selected text
vnoremap <silent> <leader>r :call VisualSelection('replace')<cr>

" grep word under cursor
" nnoremap <silent> gv :grep! "\b<C-R><C-W>\b"<cr>:cw<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-v><cr>//ge<cr>'tzt'm

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

function! StrTrim(txt)
  return substitute(a:txt, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""" PLUGINS """""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <silent> <leader>n :NERDTreeToggle<cr>

let NERDTreeIgnore = ['\.pyc$', '\.pyo$', '\.rbc$', '\.rbo$', '\.class$', '\.o$', '\~$']
let NERDTreeHijackNetrw = 0
let NERDTreeShowHidden = 1

augroup AuNERDTreeCmd
autocmd AuNERDTreeCmd VimEnter * call s:CdIfDirectory(expand("<amatch>"))
autocmd AuNERDTreeCmd FocusGained * call s:UpdateNERDTree()

" If the parameter is a directory, cd into it
function s:CdIfDirectory(directory)
  let explicitDirectory = isdirectory(a:directory)
  let directory = explicitDirectory || empty(a:directory)

  if explicitDirectory
    exe "cd " . fnameescape(a:directory)
  endif

  " Allows reading from stdin
  " ex: git diff | mvim -R -
  if strlen(a:directory) == 0
    return
  endif

  if directory
    NERDTree
    wincmd p
    bd
  endif

  if explicitDirectory
    wincmd p
  endif
endfunction

" NERDTree utility function
function s:UpdateNERDTree(...)
  let stay = 0

  if(exists("a:1"))
    let stay = a:1
  end

  if exists("t:NERDTreeBufName")
    let nr = bufwinnr(t:NERDTreeBufName)
    if nr != -1
      exe nr . "wincmd w"
      exe substitute(mapcheck("R"), "<cr>", "", "")
      if !stay
        wincmd p
      end
    endif
  endif
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Sayonara
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" map <silent> <leader>bcc :Sayonara<cr>

" Show confirm before quit
" let g:sayonara_confirm_quit = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
let g:airline_exclude_preview = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CtrlSpace
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Default mapping fix with NeoVim
let g:CtrlSpaceDefaultMappingKey = "<C-space> "

" Disable tab line
set showtabline=0

" Use Ag when available
if executable("ag")
  let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
endif

" Custom colors
hi link CtrlSpaceNormal   Normal
hi link CtrlSpaceSelected CursorLine
hi link CtrlSpaceSearch   Search
hi link CtrlSpaceStatus   StatusLine

" Custom mappings

" Close current buffer (/!\ Doesn't work with terminal buffer)
map <silent> <leader>bc <C-space>fF<Esc>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CtrlP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_show_hidden = 1
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|meteor)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
\ }
let g:ctrlp_buftag_types = {
  \ 'yaml': '-f - --sort=no --excmd=pattern --fields=nKs --extras= ',
  \ 'css': '-f - --sort=no --excmd=pattern --fields=nKs --extras= ',
  \ 'typescript': '-f - --sort=no --excmd=pattern --fields=nKs --extras= ',
  \ 'coffee': '-f - --sort=no --excmd=pattern --fields=nKs --extras= ',
  \ 'javascript': {
  \   'bin': 'ctags',
  \   'args': '-f - --sort=no --excmd=pattern --fields=nKs --extras= ',
  \ },
\ }

if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor --nogroup --hidden --ignore ".git/" -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

map <C-b> :CtrlPBuffer<cr>
map <C-t> :CtrlPBufTag<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => FZF
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nnoremap <silent> <C-f> :BLines<cr>
nnoremap <Space> :BLines<cr>
nnoremap <C-f> :Ag<Space>
nmap  <C-m> <plug>(fzf-maps-n)

function! s:gcheckout_sink(line)
  execute 'Git checkout' a:line
endfunction

command! -bang -nargs=* Gcheckout
      \ call fzf#run(fzf#wrap('Gcheckout', {
      \     'source': 'git branch',
      \     'sink': function('s:gcheckout_sink'),
      \     'options': ['--ansi', '--prompt', 'Select Branch> ',
      \                 '--color', 'hl:68,hl+:110']
      \ }), <bang>0)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Incsearch
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" map /  <Plug>(incsearch-fuzzy-/)
" map ?  <Plug>(incsearch-fuzzy-?)
" map g/ <Plug>(incsearch-fuzzy-stay)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CamelCaseMotion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
map <silent> ge <Plug>CamelCaseMotion_ge
sunmap w
sunmap b
sunmap e
sunmap ge


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Easymotion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use <leader>. as a prefix for easymotion commands
map <Leader>. <Plug>(easymotion-prefix)

" Enable default mappings
let g:EasyMotion_do_mapping = 1

" Jump to anywhere you want with minimal keystrokes
" `s{char}{char}{label}`
nmap <Leader>.s <Plug>(easymotion-overwin-f2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>.j <Plug>(easymotion-j)
map <Leader>.k <Plug>(easymotion-k)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => EasyClip
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" m mapping is now used by the 'cut' command
" so we move the 'add mark' command
nnoremap <leader>m m

" Toggle auto formatting
nmap <leader>cf <plug>EasyClipToggleFormattedPaste

" Interactive pasting
nmap <leader>p :IPaste<cr>
nmap <leader>P :IPasteBefore<cr>

" Insert mode pasting
imap <c-v> <plug>EasyClipInsertModePaste

" Auto format when pasting
let g:EasyClipAutoFormat = 1

" Save yanks to a shared file
let g:EasyClipShareYanks = 1

" Substitute operator (mapped to 's')
let g:EasyClipUseSubstituteDefaults = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Startify
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:startify_list_order = [
      \ ['    Sessions:'],
      \ 'sessions',
      \ ['    Most recently used files:'],
      \ 'files'
      \ ]

" Only show the last 10th sessions
let g:startify_session_number = 10

" Automatically persists sessions when leavin Vim
let g:startify_session_persistence = 1

" Cwd to the root directory of the VCS
let g:startify_change_to_vcs_root = 1

" Use Unicode characters
let g:startify_fortune_use_unicode = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fugitive
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom mappings
nnoremap <leader>ga :Git add %:p<CR><CR>
" nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gs :Magit<CR>
nnoremap <leader>gc :Gcommit -v -q<CR>
nnoremap <leader>gcs :Commits<CR>
nnoremap <leader>gt :Gcommit -v -q %:p<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gr :Gread<CR>
nnoremap <leader>gw :Gwrite<CR><CR>
" nnoremap <leader>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <leader>gp :Ggrep<Space>
nnoremap <leader>gm :Gmove<Space>
nnoremap <leader>gb :Git branch<Space>
" nnoremap <leader>go :Git checkout<Space>
nnoremap <leader>go :Gcheckout<CR>
nnoremap <leader>gob :Git checkout -b<Space>
nnoremap <leader>gps :Gpush<CR>
nnoremap <leader>gpsf :Gpush -f<CR>
nnoremap <leader>gpl :Gpull origin $(git rev-parse --abbrev-ref HEAD)<CR>
nnoremap <leader>grb :Git rebase origin<Space>
nnoremap <leader>gf :Gfetch<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => GV
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom mappings
nnoremap <leader>gl :GV<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Neomake
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enabled makers
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_jsx_enabled_makers = ['eslint']
let g:neomake_typescript_enabled_makers = ['tsc', 'tslint']
let g:neomake_tsx_enabled_makers = ['tsc', 'tslint']

" Typescript compiler
function! neomake#makers#ft#typescript#tsc()
  return {
    \ 'args': ['--project', getcwd(), '--noEmit'],
    \ 'append_file': 0,
    \ 'errorformat':
    \   '%E%f %#(%l\,%c): error %m,' .
    \   '%E%f %#(%l\,%c): %m,' .
    \   '%Eerror %m,' .
    \   '%C%\s%\+%m'
    \ }
endfunction

function! neomake#makers#ft#tsx#tsc()
  return {
    \ 'args': ['--project', getcwd(), '--noEmit'],
    \ 'append_file': 0,
    \ 'errorformat':
    \   '%E%f %#(%l\,%c): error %m,' .
    \   '%E%f %#(%l\,%c): %m,' .
    \   '%Eerror %m,' .
    \   '%C%\s%\+%m'
    \ }
endfunction

" Error sign colors
let g:neomake_error_sign = {'text': '✖', 'texthl': 'DiffDelete'}

" Run Neomake on save
autocmd! BufWritePost * Neomake


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERD Commenter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap <leader>cc <C-\><C-O>:call NERDComment('n', 'comment')<cr>
inoremap <leader>cu <C-\><C-O>:call NERDComment('n', 'uncomment')<cr>
inoremap <leader>c<space> <C-\><C-O>:call NERDComment('n', 'toggle')<cr>
" imap <leader>cc <plug>NERDCommenterInsert

" Add / remove 1 space after comment delimiter
let g:NERDSpaceDelims = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => EasyAlign
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Deoplete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable on startup
let g:deoplete#enable_at_startup = 1

" Disable completion max width
let g:deoplete#max_abbr_width = 0
let g:deoplete#max_menu_width = 0

" File path relative to buffer
let g:deoplete#file#enable_buffer_path = 1

" Disable in comments
call deoplete#custom#set('_', 'disabled_syntaxes', ['Comment'])

" Autocomplete with TAB
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ deoplete#mappings#manual_complete()

function! s:check_back_space() abort "{{{
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}

" Autoclose preview window
autocmd CompleteDone * pclose!

" Debug
" let g:deoplete#enable_at_startup = 1
" let g:deoplete#enable_ignore_case = 1
" let g:deoplete#auto_complete_start_length = 0
" let g:auto_complete_start_length = 0
" let g:deoplete#enable_refresh_always = 1
" let g:deoplete#enable_debug = 1
" let g:deoplete#enable_profile = 1
" call deoplete#enable_logging('DEBUG', 'deoplete.log')

" Languages specifics
" let g:deoplete#omni#input_patterns = {}
" let g:deoplete#omni#input_patterns.php = '\w+|[^. \t]->\w*|\w+::\w*'

let g:deoplete#sources#tss#enable_auto_signature_preview = 1

" Use local Flow bin when provided
let g:flow_path = StrTrim(system('PATH=$(npm bin):$PATH && which flow'))

if g:flow_path != 'flow not found'
  let g:deoplete#sources#flow#flow_bin = g:flow_path
endif

let g:deoplete#sources#omni#input_patterns = {
\   "ruby" : '[^. *\t]\.\w*\|\h\w*::',
\}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => UltiSnips
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger = "<leader>s"
let g:UltiSnipsJumpForwardTrigger = "<leader>n"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Toggline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Add comma or semicolon at the end of line or expresion
nmap <silent> <leader>, :call toggline#End(',')<cr>
nmap <silent> <leader>; :call toggline#End(';')<cr>
inoremap <silent> <leader>, <C-\><C-O>:call toggline#End(',')<cr>
inoremap <silent> <leader>; <C-\><C-O>:call toggline#End(';')<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM Markdown
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:markdown_mapping_switch_status = '<Leader>ss'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Livedown
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nmap <C-m> :LivedownToggle<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Emmet
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:user_emmet_mode = 'a'
let g:user_emmet_leader_key = '<C-z>'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim Javascript
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" JSDoc syntax highlighting
let g:javascript_plugin_jsdoc = 1

" Flow syntax highlighting
let g:javascript_plugin_flow = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ternjs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" map <leader>td :TernDef<cr>
" map <leader>to :TernDoc<cr>
" map <leader>tr :TernRefs<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => deoplete-ternjs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use deoplete.
let g:tern_request_timeout = 1
" Disable full signature type on autocomplete
" let g:tern_show_signature_in_pum = 0

" Use tern_for_vim.
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim JSX
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:jsx_ext_required = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mdn Query
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType typescript setlocal keywordprg=:MdnQueryFirstMatch
autocmd FileType typescript.tsx setlocal keywordprg=:MdnQueryFirstMatch


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ruby Monster
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:monster#completion#rcodetools#backend = "async_rct_complete"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CtrlP Rails
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> <C-g>c :CtrlPControllers<cr>
nmap <silent> <C-g>v :CtrlPViews<cr>
nmap <silent> <C-g>m :CtrlPModels<cr>
nmap <silent> <C-g>l :CtrlPLibs<cr>
nmap <silent> <C-g>s :CtrlPSpecs<cr>
nmap <silent> <C-g>g :CtrlPMigrations<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Security
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Prevent autocmd, shell and write commands from being run inside project-specific files
set secure
