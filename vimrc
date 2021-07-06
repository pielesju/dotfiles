set columns=80
set textwidth=80
set backspace=start,eol,indent
set formatoptions+=t
set nocompatible
set colorcolumn=80
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
set hlsearch
set history=1000
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

let $RC="$HOME/.vimrc"

augroup project
	autocmd!
	autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END

let &path.="src/include,/usr/include/AL,"
set makeprg=make\ -C\ ../pokix\ -j9
nnoremap <F4> :make!<cr>
nnoremap <F5> :!./pokix<cr>
