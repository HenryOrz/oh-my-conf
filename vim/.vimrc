" vim配置编码设置
scriptencoding utf-8
set encoding=utf-8
set fileencodings=utf-8,gb2312,gbk,gb18030

" plugin
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree' " 文件树
Plug 'morhetz/gruvbox' " gruvbox配色
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' } " 自动补全
Plug 'fatih/vim-go', { 'tag': '*' } " go插件
Plug 'nsf/gocode', { 'tag': '*', 'rtp': 'vim' } " go插件
Plug '/usr/local/opt/fzf' " 模糊搜索
Plug 'junegunn/fzf.vim' " 模糊搜索
Plug 'junegunn/vim-easy-align' " 表格对齐工具
call plug#end() " 


" 缩进tab->space
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

" 开启自动缩进(根据当前行缩进下一行)
set autoindent
" 开启智能缩进(根据语法智能缩进例如大括号)
set smartindent
" 开启智能补全tab(根据当前文件决定tab宽度)
set smartindent
" 开启自动识别文件类型，并根据文件类型加载不同的插件和缩进规则
filetype plugin indent on

" 修正 vim 删除/退格键行为
" 原生的 vim 行为有点怪：
" 如果你在一行的开头切换到插入模式，这时按退格无法退到上一行
" 如果你在一行的某一列切换到插入模式，这时按退格无法退删除这一列之前的字符
" 如果你开启了 autoindent，按回车时 vim 会根据上一行自动缩进，这时按退格无法删除缩进字符
" 通过设置 eol, start 和 indent 可以修正上述行为
set backspace=eol,start,indent

" vim命令行智能补全
set wildmenu
" 启动 vim 时关闭折叠代码
set nofoldenable
" 语法代码折叠
set foldmethod=syntax
" set foldmethod=indent " 缩进代码折叠

" vim 默认使用单行显示状态，但有些插件需要使用双行展示，不妨直接设成 2
set laststatus=2

" 显示行号
set nu
" 显示窗口比较小的时候折行展示，不然需要水平翻页，推荐
set linebreak
" 高亮第 80 列，推荐
set colorcolumn=80
" 光标十字高亮
set cursorline
set cursorcolumn
" 显示光标当前位置
set ruler
"

" 显示特殊符号
set list
set listchars=tab:▸-,eol:↩︎,trail:-
"set listchars=tab:▸-,eol:↩︎,trail:-↩
"set listchars=tab:✜-,eol:⚲,trail:-
 
" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 高亮显示搜索结果
set hlsearch

" 语法高亮
syntax enable
syntax on
" 配色方案
colorscheme gruvbox
" colorscheme desert
" colorscheme solarized
" colorscheme molokai
set background=dark

" 自动跳转到上次编辑位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
