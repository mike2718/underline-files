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

set fileencoding=utf-8
set fileencodings=utf-8,cp932

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_win32")
    set guifont=SF\ Mono:h13:cANSI
  endif
endif
