" 设置行号
set nu
" 相对行号
set relativenumber
" 语法高亮
syntax on
" 如果没有设置隐藏，TextEdit 可能会失败。
set hidden
" 24bit RGB color
set termguicolors
" 不与 Vi 兼容（采用 Vim 自己的操作命令）
set nocompatible
set backspace=2
" swp 文件 多久写入一次磁盘
set updatetime=100
" 光标配置
set cursorline
" 显示括号匹配
set showmatch 
" 编码格式
set encoding=UTF-8
" 开启鼠标模式
set mouse=a
" 行号 和 符号 在同一列显示
set signcolumn=number
" tab 缩进
" 设置Tab长度为4空格
set tabstop=4 
" 设置自动缩进长度为4空格
set shiftwidth=4 
" 继承前一行的缩进方式，适用于多行注释
set autoindent 
" 开启实时搜索
set incsearch
" 高亮匹配结果
set hlsearch
" 搜索时大小写不敏感
set ignorecase
" 主题
colorscheme ghdark

"=============================================================
"                         特殊配置
"=============================================================
"" esc 按键映射
inoremap jk <Esc>
" leader
let mapleader=','

" user ctrl+h/j/k/l switch windows
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" ==== 系统剪切板复制粘贴 ====
" v 模式下复制内容到系统剪切板
vmap <Leader>c "+yy
" n 模式下复制一行到系统剪切板
nmap <Leader>c "+yy
" n 模式下粘贴系统剪切板的内容
nmap <Leader>v "+p

" ==== nerdtree ====
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>o :tabnew<CR>
nnoremap <leader>s :Startify<CR>

" ==== ctrlp ====
" ctrlp 当前文件夹文件搜索
let g:ctrlp_map = '<c-p>'

" ==== easymotoin ====
" easymotoin 当前页搜索单词
nmap ,w <Plug>(easymotion-s2)

" let g:fzf_layout = { 'down': '~70%' }
" far 当前文件夹下内容替换
" Far foo bar **/*.py "foo 替换为 bar 

" ==== tagbar ====
nmap <Leader>. :TagbarToggle<CR>
let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_2/bin/ctags'
let g:tagbar_width = max([45, winwidth(0) / 5])

" ==== cocsettings ====
nnoremap <silent> <leader>h :call ShowDocumentation()<CR>

 function! ShowDocumentation()
   if CocAction('hasProvider', 'hover')
       call CocActionAsync('doHover')
         else
             call feedkeys('K', 'in')
               endif
               endfunction
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" ====  NERDTree 插件 ====
" 设置宽度
let NERDTreeWinSize=45

" ====  vim-go 插件 ====
let g:go_fmt_command = "goimports" " 格式化将默认的 gofmt 替换
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"
let g:go_version_warning = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_methods = 1
let g:go_highlight_generate_tags = 1
let g:godef_split=2

" ====  vim-plugin ====
call plug#begin()

" 美化插件
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'yggdroot/indentline'

Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'brooth/far.vim'
Plug 'lfv89/vim-interestingwords'
Plug 'junegunn/vim-easy-align'

" GO 插件
Plug 'fatih/vim-go'
" 大纲式导航, Go 需要 https://github.com/jstemmer/gotags 支持
Plug 'majutsushi/tagbar'
" 自动补全括号的插件，包括小括号，中括号，以及花括号
Plug 'jiangmiao/auto-pairs'
" 代码自动完成，安装完插件还需要额外配置才可以使用
"Plug 'Valloric/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" 配色方案
Plug 'wojciechkepka/vim-github-dark'
" git 插件
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
" fzf搜索插件
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'
call plug#end()


