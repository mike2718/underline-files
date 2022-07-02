set number
set expandtab
set ignorecase
set smartcase
set laststatus=2
set nocompatible
syntax on
set autoindent

filetype plugin on

set showcmd
set wildmenu
set hidden
set backspace=indent,eol,start
set fileformats=dos,unix
set ruler
set showmatch
set noswapfile
set shiftwidth=4
set tabstop=4
set autoread
set splitright

set nowritebackup
set nobackup
set virtualedit=block
set ambiwidth=double
set showcmd

set textwidth=80
set belloff=all

set encoding=utf-8
set fileencodings=ucs-2le,utf-8,cp936
set langmenu=en_US
let $LANG = 'en_US'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_win32")
    set guifont=Cascadia\ Mono:h13:cANSI
  endif
endif
