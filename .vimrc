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
set fileformats=dos,unix
set ruler
set showmatch
set noswapfile
set encoding=utf-8
set fileencodings=ucs-2le,utf-8,cp936
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
set textwidth=80
set formatoptions-=t
augroup vimrc_autocmds
  autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#592929
  autocmd BufEnter * match OverLength /\%80v.*/
augroup END
