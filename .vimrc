set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Markdown'
Plugin 'nelstrom/vim-qargs'
Plugin 'mileszs/ack.vim'
Plugin 'cppcomplete'
Plugin 'cscope.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" 批量注释
Plugin 'scrooloose/nerdcommenter'
" C++语法高亮
Plugin 'Mizuchi/STL-Syntax'
" 状态栏增强
Plugin 'bling/vim-airline'
" 高亮多个关键字
Plugin 'dimasg/vim-mark'
" 在源文件和头文件之间切换
Plugin 'a.vim'
" 标签书签可视化
Plugin 'kshenoy/vim-signature'

" 类似于taglist，显示当前文件里的函数，需要ctags
Plugin 'Tagbar'
nmap <F8> :TagbarToggle<CR>

" 树形文件管理器
Plugin 'scrooloose/nerdtree'
let NERDTreeWinPos='right'
let NERDTreeWinSize=30
map <F2> :NERDTreeToggle<CR>

" 主题
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" 显示行号
set number
" 搜索时，输入前几个字符就开始搜索
set incsearch
" 高亮搜索结果
set hlsearch
" 设置主题
set background=dark
color solarized
"color molokai
" 跳到上次的光标位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" 状态栏一直显示
set laststatus=2
" 定义快捷键的前缀，即<Leader>，默认是/
let mapleader=","
" 显示光标当前位置
set ruler
" 高亮显示当前行/列
set cursorline
"set cursorcolumn

" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on
" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on
" 关闭兼容模式
set nocompatible

" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

" 启动 vim 时关闭折叠代码
set nofoldenable
