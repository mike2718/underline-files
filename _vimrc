" ==========================================
" 基础通用设置
" ==========================================
set nocompatible              " 不兼容 Vi 模式
filetype plugin indent on     " 开启文件类型检测、插件和缩进
syntax on                     " 语法高亮
set confirm                   " 未保存时退出弹出确认
set autoread                  " 文件在外部被修改时自动载入

" ==========================================
" 界面与显示优化 (适合树莓派终端)
" ==========================================
set number                    " 显示行号
set laststatus=2              " 总是显示状态栏
set ruler                     " 显示光标位置
set showcmd                   " 显示未输入完的命令
set wildmenu                  " 命令行补全增强模式
set showmatch                 " 匹配括号高亮
set cursorline                " 高亮当前行 (方便在终端寻找光标)
set t_Co=256                  " 强制开启 256 色支持
set belloff=all               " 关闭所有提示音

" ==========================================
" 编码与本地化 (防止乱码)
" ==========================================
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,gb18030,cp936,latin1
set termencoding=utf-8
set ambiwidth=double          " 解决某些中文环境下字符重叠问题

" ==========================================
" 缩进与排版
" ==========================================
set expandtab                 " Tab 转空格
set tabstop=4                 " Tab 宽度
set shiftwidth=4              " 自动缩进宽度
set autoindent                " 自动缩进
set backspace=indent,eol,start " 允许退格键跨行及处理缩进
set virtualedit=block         " 允许在可视化块模式下选择没有字符的区域

" ==========================================
" 搜索与查找
" ==========================================
set ignorecase                " 搜索忽略大小写
set smartcase                 " 搜索包含大写时切换为大小写敏感
set hlsearch                  " 高亮搜索结果
set incsearch                 " 输入过程中实时跳转到结果

" ==========================================
" 文件与缓冲区管理
" ==========================================
set hidden                    " 允许在未保存的情况下切换 Buffer
set splitright                " 水平拆分窗口在右侧
set noswapfile                " 不产生 .swp 文件 (减少树莓派 SD 卡读写)
set nobackup                  " 不产生备份文件
set nowritebackup

" ==========================================
" 树莓派远程交互优化
" ==========================================
set mouse=a                   " 开启鼠标支持 (SSH 下也能用鼠标滚动或点选)
set history=1000              " 增加命令历史记录

" ==========================================
" 自定义功能 (80 字符边界提醒)
" ==========================================
set tw=80
set fo-=t                     " 自动折行不影响输入
augroup vimrc_autocmds
    autocmd!
    " 仅在非压缩文件或非只读文件中开启超长高亮，避免大文件卡顿
    autocmd BufWinEnter * highlight OverLength ctermbg=238 guibg=#592929
    autocmd BufWinEnter * match OverLength /\%81v.*/
augroup END

" ==========================================
" 常用快捷键映射 (根据树莓派习惯可选)
" ==========================================
" 去掉搜索高亮
noremap <silent><leader>/ :nohls<CR>