"        _                    
" __   _(_)_ __ ___  _ __ ___ 
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__ 
"   \_/ |_|_| |_| |_|_|  \___|

set columns=60
set textwidth=60
set backspace=start,eol,indent
set formatoptions+=t
set nocompatible
set colorcolumn=79
set viminfo=""
highlight ColorColumn ctermbg=red
filetype on
filetype plugin on
filetype indent on
syntax on
set number
set cursorline
set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set nobackup
set scrolloff=10
set nowrap
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode
set showmatch
set clipboard=unnamedplus
set showmode
set wildmenu
set lazyredraw
set ttyfast
set autoindent
set smartindent
set hlsearch 

"compile current LaTeX document
map I :! pdflatex %<CR><CR>
"show compiled LaTeX document
map S :! mupdf $(echo % \| sed 's/tex$/pdf/') & disown<CR><CR>
