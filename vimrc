" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/majutsushi/tagbar.git'
Plug 'https://github.com/justmao945/vim-clang.git'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/altercation/vim-colors-solarized.git'
Plug 'https://github.com/vim-scripts/a.vim.git'
Plug 'https://github.com/qpkorr/vim-bufkill.git'
" Initialize plugin system
call plug#end()


"vim的内部编码
set encoding=utf-8
""vim在与屏幕和键盘交互师傅使用的编码（取决于实际的终端的设定）
set termencoding=utf-8
"vim打开文件时的尝试使用的编码
set fileencodings=utf-8,gbk,gb2312,default,latin1
""开启语法高亮功能
syntax enable
"允许用指定高亮替换方案
syntax on
""显示行号
set nu
"括号匹配
set showmatch

set autoindent
set smartindent
set cindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

imap <c-z> <c-x><c-i>
imap <c-d> <c-x><c-]>

"map <C-]> to open in a new tab
"nnoremap <silent><Leader><C-]> <C-w><C-]><C-w>T
"map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
" move among buffers with CTRL
map <C-J> :bnext<CR>
map <C-K> :bprev<CR>

"ctags setup
set tags=./tags;,tags
nmap <F5> :!ctags -R --c++-kinds=+cdefgmnpstuvx --fields=+aiKSzm --extra=+q <CR><CR>
set autochdir
"map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>

"vim-colors-solarized
syntax enable
set background=dark
colorscheme solarized

"nerdtree插件，目录树。
""设置默认开启
autocmd vimenter * NERDTree
"打开关闭快捷键
map <F3> :NERDTreeToggle<CR>
"let NERDTreeWinSize=30

"vim-airline
let g:airline#extensions#tabline#enabled = 1

"tagbar插件显示方法属性列表
map <silent> <F4> :TagbarToggle<CR>
let g:tagbar_width=30
let g:tagbar_autofocus=1
let g:clang_diagsopt = ''   " <- disable diagnostics
