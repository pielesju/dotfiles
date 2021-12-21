"        _                    
" __   _(_)_ __ ___  _ __ ___ 
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__ 
"   \_/ |_|_| |_| |_|_|  \___|

set columns=80
set textwidth=80
set backspace=start,eol,indent
set formatoptions+=t
set nocompatible
set colorcolumn=80
set viminfo=""
highlight ColorColumn ctermbg=red
filetype plugin indent on
syntax on
set number
set cursorline
set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set nobackup
set scrolloff=10
set nowrap
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode
set showmatch

"compile current LaTeX document
map I :! pdflatex %<CR><CR>
"show compiled LaTeX document
map S :! mupdf $(echo % \| sed 's/tex$/pdf/') & disown<CR><CR>
