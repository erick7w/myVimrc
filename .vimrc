" 设置行号
set nu
syntax on

" 不与 Vi 兼容（采用 Vim 自己的操作命令）
set nocompatible

" 光标配置
set cursorline

set showmatch " 显示括号匹配

set encoding=UTF-8

" 开启鼠标模式
set mouse=a

" 按键映射
inoremap jk <Esc>

" tab 缩进
set tabstop=4 " 设置Tab长度为4空格
set shiftwidth=4 " 设置自动缩进长度为4空格
set autoindent " 继承前一行的缩进方式，适用于多行注释

" user ctrl+h/j/k/l switch windows
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" leader
let mapleader=','
" nerdtree
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>

" ctrlp 当前文件夹文件搜索
let g:ctrlp_map = '<c-p>'
" easymotoin 当前页搜索单词
nmap ss <Plug>(easymotion-s2)

" far 当前文件夹下内容替换
" Far foo bar **/*.py "foo 替换为 bar 
nmap <Leader>. :TagbarToggle<CR>
" 代码大纲
let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_2/bin/ctags'
let g:tagbar_width = max([30, winwidth(0) / 5])


" ==== 系统剪切板复制粘贴 ====
" v 模式下复制内容到系统剪切板
vmap <Leader>c "+yy
" n 模式下复制一行到系统剪切板
nmap <Leader>c "+yy
" n 模式下粘贴系统剪切板的内容
nmap <Leader>v "+p


" 开启实时搜索
set incsearch
set hlsearch
" 搜索时大小写不敏感
set ignorecase

"filetype plugin indent on    " 启用自动补全

" 开启24bit的颜色，开启这个颜色会更漂亮一些
set termguicolors

set background=dark
"colorscheme hybrid
"colorscheme jellybeans
colorscheme ghdark
"if ! has("gui_running")
"    set t_Co=256
"endif
"" feel free to choose :set background=light for a different style
"set background=dark
"colors peaksea
"





"==============================================================================
" NERDTree 插件
"==============================================================================
" 设置宽度
let NERDTreeWinSize=45


"==============================================================================
" vim-go 插件
"==============================================================================
let g:go_fmt_command = "goimports" " 格式化将默认的 gofmt 替换
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"

let g:go_version_warning = 1
let g:go_highlight_types = 1
"let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_methods = 1
let g:go_highlight_generate_tags = 1

let g:godef_split=2



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"插件配置 vim-plugin

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

" 配色方案
Plug 'wojciechkepka/vim-github-dark'
Plug 'w0ng/vim-hybrid'
Plug 'vim-scripts/peaksea'
Plug 'nanotech/jellybeans.vim'

" markdown 插件
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'

" git 插件
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

" fzf搜索插件
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'

call plug#end()


