set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'LustyJuggler'
Plugin 'LustyExplorer'

"" Programming language and framework support
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rbenv'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'  " wisely add end in Ruby
Plugin 'elixir-lang/vim-elixir'
"Plugin 'calebsmith/vim-lambdify'

"" Custom text objects
Plugin 'kana/vim-textobj-user'
Plugin 'vim-scripts/argtextobj.vim'
Plugin 'nelstrom/vim-textobj-rubyblock'

"" Color schemes
Plugin 'altercation/vim-colors-solarized'

Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'rking/ag.vim'  " The Silver Searcher

Plugin 'shemerey/vim-peepopen'

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

autocmd bufwritepost .vimrc source $MYVIMRC  " Auto source $MYVIMRC after save
" Open $MYVIMRC with <leader>v
nmap <leader>v :tabedit $MYVIMRC<CR>

nnoremap <leader>s :Ag 

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


"" Fugitive config
autocmd User fugitive 
  \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
  \   nnoremap <buffer> .. :edit %:h<CR> |
  \ endif
autocmd BufReadPost fugitive://* set bufhidden=delete
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P


"" Needed by textobj-rubyblock:
runtime macros/matchit.vim

if has('gui_running')
  set background=dark
  "let g:solarized_contrast = "high"
  let g:solarized_diffmode="high"
  colorscheme solarized
  "set guifont=Inconsolata:h14
  set guifont=Menlo:h12
else
  set background=dark
end
