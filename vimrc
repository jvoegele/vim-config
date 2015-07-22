set nocompatible

" Space is your Leader!
let mapleader = "\<Space>"
let maplocalleader = "\<Space>"

" let g:paredit_shortmaps = 1
" let g:paredit_leader = "\<Space>"

" ===== Begin Vundle setup
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'christoomey/vim-tmux-navigator'
Plugin 'sjl/tslime.vim'
" Plugin 'jgdavey/tslime.vim'
Plugin 'genutils'

"" File and buffer explorers/managers.
Plugin 'bufexplorer.zip'
Plugin 'SelectBuf'
" Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'kien/ctrlp.vim'
Plugin 'LustyJuggler'
Plugin 'LustyExplorer'
Plugin 'Command-T'

"" Programming language and framework support
Plugin 'scrooloose/syntastic'
Plugin 'vim-ruby/vim-ruby'
Plugin 'ngmy/vim-rubocop'
Plugin 'skwp/vim-rspec'
Plugin 'tpope/vim-rbenv'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'  " wisely add end in Ruby
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'guns/vim-clojure-static'
" Plugin 'vim-scripts/paredit.vim'
" Plugin 'paredit.vim'
Plugin 'guns/vim-sexp'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'tpope/vim-fireplace'
Plugin 'derekwyatt/vim-scala'
" Plugin 'ktvoelker/sbt-vim'
Plugin 'jimenezrick/vimerl'
Plugin 'elixir-lang/vim-elixir'
Plugin 'wting/rust.vim'
Plugin 'calebsmith/vim-lambdify'
Plugin 'kchmck/vim-coffee-script'
Plugin 'idris-hackers/idris-vim'

Plugin 'tomtom/tcomment_vim'

"" Custom text objects
Plugin 'kana/vim-textobj-user'
Plugin 'vim-scripts/argtextobj.vim'
Plugin 'nelstrom/vim-textobj-rubyblock'

"" Color schemes
Plugin 'altercation/vim-colors-solarized'

Plugin 'tpope/vim-repeat'  " enable repeating supported plugin maps with '.'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-dispatch'

Plugin 'ZoomWin'  " <c-w>o to activate

Plugin 'rking/ag.vim'  " The Silver Searcher

Plugin 'tpope/vim-vinegar'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimfiler.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'rizzatti/dash.vim'

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
set number
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

" Open $MYVIMRC with <leader>v
nmap <leader>v :tabedit $MYVIMRC<CR>
" Auto source $MYVIMRC after save
autocmd bufwritepost .vimrc source $MYVIMRC

nnoremap <leader>d :Dash<CR>
nnoremap <leader>s :Ag 

" Strip all trailing whitespace.
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Clear highlighted search results.
nnoremap <leader><space> :noh<cr>

" Split window handling
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>w <C-w>v<C-w>l
" Close buffer without closing window.
"nmap <C-w>d <Plug>Kwbd

nnoremap <leader>n :NERDTreeToggle<cr>

" Convenient access to BufExplorer
"nnoremap <leader>b :BufExplorer<cr>
nmap <leader>b <Plug>SelectBuf


"" Fugitive config
" autocmd User fugitive 
"   \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
"   \   nnoremap <buffer> .. :edit %:h<CR> |
"   \ endif
autocmd BufReadPost fugitive://* set bufhidden=delete
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

"" Always-on rainbow parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"" Syntastic configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"" Needed by textobj-rubyblock:
runtime macros/matchit.vim

if has('gui_running')
  set background=light
  "let g:solarized_contrast = "high"
  let g:solarized_diffmode="high"
  colorscheme solarized
  "set guifont=Inconsolata:h14
  " set guifont=Menlo:h12
  set guifont=Source\ Code\ Pro:h13
else
  colorscheme solarized
end

autocmd FileType erlang set tabstop=4|set softtabstop=4|set shiftwidth=4|set expandtab
