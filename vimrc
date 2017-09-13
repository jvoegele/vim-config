set nocompatible

" Space is your Leader!
let mapleader = "\<Space>"
let maplocalleader = "\<Space>"

let g:paredit_shortmaps = 1
" let g:paredit_leader = "\<Space>"

" ===== Begin Vundle setup
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'editorconfig/editorconfig-vim'

Plugin 'powerline/powerline'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'jgdavey/tslime.vim'
Plugin 'genutils'

"" File and buffer explorers/managers.
Plugin 'bufexplorer.zip'
Plugin 'SelectBuf'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'kien/ctrlp.vim'
" Plugin 'LustyJuggler'
" Plugin 'LustyExplorer'

"" Programming language and framework support
Plugin 'tpope/vim-projectionist'
Plugin 'scrooloose/syntastic'
Plugin 'vim-ruby/vim-ruby'
Plugin 'ngmy/vim-rubocop'
Plugin 'skwp/vim-rspec'
Plugin 'tpope/vim-rbenv'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'  " wisely add end in Ruby
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'guns/vim-clojure-static'
Plugin 'guns/vim-sexp'
Plugin 'tpope/vim-sexp-mappings-for-regular-people'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'tpope/vim-fireplace'
Plugin 'jimenezrick/vimerl'
Plugin 'edkolev/erlang-motions.vim'
Plugin 'ehamberg/vim-cute-erlang'
Plugin 'elixir-lang/vim-elixir'
Plugin 'slashmili/alchemist.vim'
Plugin 'avdgaag/vim-phoenix'
Plugin 'calebsmith/vim-lambdify'
Plugin 'idris-hackers/idris-vim'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'fsharp/vim-fsharp'
Plugin 'wlangstroth/vim-racket'

Plugin 'tomtom/tcomment_vim'
Plugin 'neomake/neomake'

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'JamshedVesuna/vim-markdown-preview'

"" Custom text objects
Plugin 'kana/vim-textobj-user'
Plugin 'vim-scripts/argtextobj.vim'

"" Color schemes
Plugin 'altercation/vim-colors-solarized'
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plugin 'colepeters/spacemacs-theme.vim'
Plugin 'liuchengxu/space-vim-dark'
Plugin 'jonathanfilip/vim-lucius'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'sjl/badwolf'
Plugin 'nanotech/jellybeans.vim'
Plugin 'morhetz/gruvbox'
Plugin 'chriskempson/base16-vim'
Plugin 'ayu-theme/ayu-vim'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'vim-scripts/mayansmoke'

Plugin 'tpope/vim-repeat'  " enable repeating supported plugin maps with '.'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-dispatch'

Plugin 'ZoomWin'  " <c-w>o to activate

Plugin 'rking/ag.vim'  " The Silver Searcher
" Plugin 'wincent/ferret'  " Better Silver Searcher?

Plugin 'tpope/vim-vinegar'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimfiler.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'rizzatti/dash.vim'

"" Neovim specific
" Plugin 'kassio/neoterm'

call vundle#end()            " required
filetype plugin indent on    " required
" ===== End Vundle setup

" Space is your Leader!
let mapleader = "\<Space>"
let maplocalleader = "\<Space>"

" let g:paredit_shortmaps = 0
" let g:paredit_leader = "\<Space>"

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
set scrolloff=1
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

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.beam,*/_build/*

set tags=./.git/tags,./tags,tags

" Map shift-tab to omnicomplete
inoremap <S-TAB> <C-X><C-O>

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
nnoremap <leader>x <C-w>s<C-w>j
" Close buffer without closing window.
"nmap <C-w>d <Plug>Kwbd

nnoremap <leader>n :NERDTreeToggle<cr>

" Convenient access to BufExplorer
"nnoremap <leader>b :BufExplorer<cr>
nmap <leader>b <Plug>SelectBuf
nmap <leader>p :CtrlPBuffer<CR>

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

let g:ctrlp_working_path_mode = ''
" let g:ctrlp_match_window = 'top,order:btt,min:1,max:10,results:10'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:vim_markdown_folding_disabled = 1
" let g:vim_markdown_conceal = 0
" let macvim_skip_colorscheme=1
let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_github=1

"" Needed by textobj-rubyblock:
" runtime macros/matchit.vim

" autocmd GUIEnter colorscheme solarized | set background dark

if has('gui_running')
  set guifont=Source\ Code\ Pro:h14
  set background=light
  colorscheme pyte
  let g:gruvbox_contrast_dark="hard"
  let g:gruvbox_improved_warnings=1
  " let g:solarized_contrast="high"
  " let g:solarized_diffmode="high"
  set colorcolumn=100
else
  " colorscheme solarized
  " set background=dark
end

autocmd FileType erlang set tabstop=4|set softtabstop=4|set shiftwidth=4|set expandtab
autocmd FileType cpp set tabstop=4|set softtabstop=4|set shiftwidth=4|set expandtab
