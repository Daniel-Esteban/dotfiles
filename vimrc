let mapleader=","

set nocompatible

filetype indent plugin on
syntax enable "Sintaxis ON

call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'

Plug 'chriskempson/base16-vim'

Plug 'airblade/vim-gitgutter'

Plug 'kien/ctrlp.vim'

Plug 'bling/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'scrooloose/syntastic'

Plug 'ervandew/supertab'

Plug 'fatih/vim-go', {'for': 'go', 'do': ':GoInstallBinaries' }
call plug#end()

"Airline theme
let g:airline_theme='qwq'

"CtrlP dont change working dir
let g:ctrlp_working_path_mode = 0
let g:ctrlp_show_hidden = 1

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"Linea limite
set textwidth=80
set colorcolumn=+1

"Auto reload if file changes
set autoread

colorscheme solarized "Tema solarized
set background=dark "Fondo oscuro

set number "Numero de lineas

"Indentation
set autoindent
set expandtab
set softtabstop=4
set shiftwidth=4
"/Indentation

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
nnoremap <C-Up> ddkP
inoremap <C-Up> <esc> ddkP
nnoremap <C-Down> ddp
inoremap <C-Down> <esc>ddp

"Make tags in current dir
command MakeTags execute "!ctags -R ."

"Go to tag declaration
noremap <leader>r <esc><C-]>

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
set list

"Vim-Airline
set laststatus=2

"Supertab
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:SuperTabDefaultCompletionType = "context"

"Base 16
let base16colorspace=256
let g:airline_theme='base16'

if filereadable(expand("~/.vimrc_background"))
    let base16colorspace=256
    source ~/.vimrc_background
endif
