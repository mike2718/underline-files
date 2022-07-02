filetype plugin on
set confirm

set number
set expandtab
set ignorecase
set smartcase
set laststatus=2
set nocompatible
syntax on
set autoindent
set showcmd
set wildmenu
set hidden
set backspace=indent,eol,start
set ruler
set showmatch
set noswapfile
set encoding=utf-8
set shiftwidth=4
set tabstop=4
set autoread
set splitright

set nowritebackup
set nobackup
set virtualedit=block
set ambiwidth=double
set showcmd

set belloff=all

set tw=80
set fo-=t
augroup vimrc_autocmds
  autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#592929
  autocmd BufEnter * match OverLength /\%80v.*/
augroup END

