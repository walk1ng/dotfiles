" 常用配置
" 设置行号
set number
" 设置主题
colorscheme desert
" 语法高亮
syntax on
" 高亮搜索
set hlsearch
" 设置折叠方式
set foldmethod=indent

" 设置leader
let mapleader=','

" 使用 leader+w 直接保存
inoremap <leader>w <Esc>:w<cr>
noremap <leader>w :w<cr>

" 使用 jj 进入 normal 模式
inoremap jj <Esc>`^

" use ctrl+h/j/k/l switch window
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" json 格式化
com! FormatJSON %!python3 -m json.tool
" sudo write
cnoremap w!! w !sudo tee % >/dev/null

" 使用空格选中单词
map <space> <Esc>viw
" 使用 - 删除字符
map - x
" insert 模式下使用 ctrl-d 删除一行
inoremap <c-d> <Esc>ddi
" normal 模式下使用 / 删除一行
map / dd

" plug.vim 安装插件
call plug#begin()
Plug 'mhinz/vim-startify'
" Initialize plugin system
call plug#end()
