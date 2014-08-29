set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"" Color schemes
Plugin 'altercation/vim-colors-solarized'

call vundle#end()            " required
filetype plugin indent on    " required
" ===== End Vundle setup

syntax on
set encoding=utf-8
set hidden
set autoindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set backspace=indent,eol,start
set relativenumber
set wildmenu
set wildmode=list:longest
set scrolloff=3
set ruler
set laststatus=2
set list listchars=tab:»\ ,trail:·  " Highlights tabs and trailing spaces
set ttyfast

" Search settings
set hlsearch
set ignorecase
set smartcase
set incsearch
set showmatch


" Space is your Leader!
let mapleader = "\<Space>"

" Strip all trailing whitespace.
" nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Split window handling
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" nnoremap <leader>w <C-w>v<C-w>l
" Close buffer without closing window.
"nmap <C-w>d <Plug>Kwbd

" Convenient access to BufExplorer
"nnoremap <leader>b :BufExplorer<cr>
