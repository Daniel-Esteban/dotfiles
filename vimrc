let mapleader=","

filetype indent plugin on
syntax on "Sintaxis ON

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'

Plug 'kien/ctrlp.vim'

Plug 'bling/vim-airline'

Plug 'vim-airline/vim-airline-themes'

call plug#end()


colorscheme solarized "Tema solarized


set number "Numero de lineas

"Indentation
set autoindent
set expandtab
set softtabstop=4
set shiftwidth=4
"/Indentation

"Interfer with movement mappings <C-j><C-k>
let g:NERDTreeMapJumpPrevSibling='<Nop>'
let g:NERDTreeMapJumpNextSibling='<Nop>'


set showcmd
set cursorline

filetype indent on

set wildmenu

set showmatch
set incsearch
set hlsearch

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" jk is escape
inoremap jk <esc>

"Backups
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

"Invisible chars
set listchars=tab:▸\ ,eol:¬,space:·
set list!
"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59


"Vim-Airline
set laststatus=2
