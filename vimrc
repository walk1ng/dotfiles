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
inoremap jj <Esc>

" use ctrl+h/j/k/l switch window
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" json 格式化
com! FormatJSON %!python3 -m json.tool
