let mapleader=","

set nocompatible

filetype indent plugin on
syntax enable "Sintaxis ON

call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'

Plug 'scrooloose/nerdtree'

Plug 'kien/ctrlp.vim'

Plug 'bling/vim-airline'

Plug 'vim-airline/vim-airline-themes'

call plug#end()

"Airline theme
let g:airline_theme='qwq'

"CtrlP dont change working dir
let g:ctrlp_working_path_mode = 0


colorscheme solarized "Tema solarized
set background=dark "Fondo oscuro

set number "Numero de lineas

"Indentation
set autoindent
set expandtab
set softtabstop=4
set shiftwidth=4
"/Indentation

"Interfer with movement mappings <C-j><C-k>
let g:NERDTreeMapJumpPrevSibling=''
let g:NERDTreeMapJumpNextSibling=''

set showcmd
set cursorline


set wildmenu

set showmatch
set incsearch
set hlsearch

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" jk is escape
inoremap jk <esc>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Move lines
nnoremap <C-Up> ddkkp
inoremap <C-Up> <esc> ddkkp
nnoremap <C-Down> ddp
inoremap <C-Down> <esc>ddp

"Autoclose
"inoremap ( ()<esc>hli
"inoremap [ []<esc>hli
"inoremap { {}<esc>hli




"No delay for esc key
set timeoutlen=1000 ttimeoutlen=0

"Backups
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

"Invisible chars
set listchars=tab:▸\ ,eol:¬,trail:·
set list!


"Vim-Airline
set laststatus=2
