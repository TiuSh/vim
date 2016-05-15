set nocompatible

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins (Vundle)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" My plugins

" IDE
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/bufkill.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'bkad/CamelCaseMotion'
Plugin 'tpope/vim-repeat'
Plugin 'altercation/vim-colors-solarized'
Plugin 'arecarn/crunch.vim'
Plugin 'Shougo/vimproc.vim'

" VCS (Git/SVN/...)
Plugin 'tpope/vim-fugitive'

" All languages
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-commentary'
Plugin 'jiangmiao/auto-pairs'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'junegunn/vim-easy-align'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-surround'
Plugin 'terryma/vim-expand-region'
Plugin 'argtextobj.vim'
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-entire'

" Markdown
Plugin 'shime/vim-livedown'

" HTML
Plugin 'mattn/emmet-vim'

" CSS
Plugin 'cakebaker/scss-syntax.vim'

" Javascript
Plugin 'pmsorhaindo/syntastic-local-eslint.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'helino/vim-json'
Plugin 'ternjs/tern_for_vim'
Plugin 'mxw/vim-jsx'
Plugin 'justinj/vim-react-snippets'

" Meteor
Plugin 'cmather/vim-meteor-snippets'

" Haskell
Plugin 'neovimhaskell/haskell-vim'
Plugin 'eagletmt/ghcmod-vim'
Plugin 'eagletmt/neco-ghc'


" All of your Plugins must be added before the following line
call vundle#end()

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
nmap <leader>w :w!<cr>


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

" Show line numbers
set number

" Show column number
set ruler

" Highlight current line
set cursorline

" Show incomplete command in lower right corner
set showcmd

" Hide mode (shown in status bar)
set noshowmode

" Command line height
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
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
set mouse=a
set ttymouse=sgr

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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-javascript plugin fix (only if VIM version is under 7.4 patch 1-7)
set regexpengine=1

" Enable syntax highlighting
syntax enable

" Solarized scheme options
let g:solarized_menu=0
let g:solarized_contrast="high"

" Uncomment if you don't use the Solarized palette in the terminal
" let g:solarized_termcolors=256

" Color Scheme
set background=dark
colorscheme solarized

" Maximum line length
set colorcolumn=100

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


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
set listchars+=nbsp:·     " display whitespaces with a dot
set listchars+=trail:·    " display trailing whitespaces with a dot
set listchars+=extends:»  " right wrap
set listchars+=precedes:« " left wrap

" Remove trailing spaces on save
autocmd BufWritePre * :%s/\s\+$//e


""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Disable highlight when <leader><space> is pressed
map <silent> <leader><space> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Location list mapping
map <leader>lo :lopen<cr>
map <leader>lc :lclose<cr>
map <leader>ln :lnext<cr>
map <leader>lp :lprevious<cr>

" Close window
map <leader>q :close<cr>

" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all the buffers
map <leader>ba :%bdelete<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

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

" Add comma or semicolon at the end of line or expresion
nmap <silent> <leader>, :call ToggleLineEnding(',')<CR>
nmap <silent> <leader>; :call ToggleLineEnding(';')<CR>
imap <silent> <leader>, <Esc>:call ToggleLineEnding(',')<CR>a
imap <silent> <leader>; <Esc>:call ToggleLineEnding(';')<CR>a

" Auto close an html tag
imap </ </<C-X><C-O>

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

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => The Silver Searcher
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => grep
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" grep word under cursor
nnoremap <silent> gv :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" Define :Ag command
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

" Open search command
nnoremap <leader>g :Ag<SPACE>

" Open / Close Quickfix window
map <leader>co :copen<CR>
map <leader>cc :cclose<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vimgrep searching
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" When you press <leader>r you can search and replace the selected text
vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>


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
" => NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>n :NERDTreeToggle<cr>

let NERDTreeIgnore=['\.pyc$', '\.pyo$', '\.rbc$', '\.rbo$', '\.class$', '\.o$', '\~$']
let NERDTreeHijackNetrw = 0
let NERDTreeShowHidden=1

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
      exe substitute(mapcheck("R"), "<CR>", "", "")
      if !stay
        wincmd p
      end
    endif
  endif
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => YouCompleteMe
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Emmet
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:user_emmet_mode='a'
let g:user_emmet_leader_key='<C-z>'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CtrlP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-b> :CtrlPBuffer<cr>
map <C-t> :CtrlPBufTag<cr>

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|meteor)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => UltiSnips
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<leader>s"
let g:UltiSnipsJumpForwardTrigger="<leader>n"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Easytags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tags=./.tags;
set cpoptions+=d

let g:easytags_cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'
let g:easytags_opts=["--exclude=*.meteor/*"]
" let g:easytags_autorecurse=1
let g:easytags_dynamic_files=2
let g:easytags_async=1
let g:easytags_auto_highlight = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => EasyAlign
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Markdown
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nmap <C-m> :LivedownToggle<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tern
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>td :TernDef<cr>
map <leader>to :TernDoc<cr>
map <leader>tr :TernRefs<cr>


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
" => Syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=2
let g:syntastic_check_on_open=0
let g:syntastic_check_on_wq=0
let g:syntastic_html_tidy_ignore_errors=['<template> proprietary attribute "name"']
let g:syntastic_javascript_checkers=['eslint']

map <leader>sc :SyntasticCheck<cr>


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

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction

function! ToggleLineEnding(char)
  let l:line = getline('.')

  if (strpart(l:line, strlen(l:line) - 1) == a:char)
    let l:toggledLine = substitute(l:line, a:char . '$', '', '')
  else
    let l:toggledLine = l:line . a:char
  endif

  call setline('.', l:toggledLine)
endfunction
