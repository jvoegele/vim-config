set nocompatible

" let loaded_matchparen = 1

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

" Plugin 'editorconfig/editorconfig-vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'christoomey/vim-tmux-navigator'
" Plugin 'jgdavey/tslime.vim'
" Plugin 'genutils'

"" File and buffer explorers/managers.
" Plugin 'bufexplorer.zip'
" Plugin 'SelectBuf'
Plugin 'jeetsukumaran/vim-buffergator'
" Plugin 'kien/ctrlp.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
" Plugin 'LustyJuggler'
" Plugin 'LustyExplorer'
Plugin 'rbgrouleff/bclose.vim'

"" Programming language and framework support
Plugin 'tpope/vim-projectionist'
" Plugin 'scrooloose/syntastic'
Plugin 'vim-ruby/vim-ruby'
" Plugin 'ngmy/vim-rubocop'
" Plugin 'skwp/vim-rspec'
" Plugin 'tpope/vim-rbenv'
" Plugin 'tpope/vim-rails'
" Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'tpope/vim-endwise'  " wisely add end in Ruby, Elixir, etc.
Plugin 'guns/vim-clojure-static'
Plugin 'guns/vim-sexp'
" Plugin 'tpope/vim-sexp-mappings-for-regular-people'
" Plugin 'vim-scripts/paredit.vim'
" Plugin 'kien/rainbow_parentheses.vim'
Plugin 'tpope/vim-fireplace'
Plugin 'jimenezrick/vimerl'
Plugin 'edkolev/erlang-motions.vim'
" Plugin 'ehamberg/vim-cute-erlang'
Plugin 'elixir-lang/vim-elixir'
Plugin 'mhinz/vim-mix-format'
Plugin 'slashmili/alchemist.vim'
" Plugin 'avdgaag/vim-phoenix'
Plugin 'calebsmith/vim-lambdify'
" Plugin 'idris-hackers/idris-vim'
" Plugin 'neovimhaskell/haskell-vim'
" Plugin 'fsharp/vim-fsharp'
" Plugin 'wlangstroth/vim-racket'
" Plugin 'jparise/vim-graphql'
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'maksimr/vim-jsbeautify'

" Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-commentary'
Plugin 'dense-analysis/ale'
" Plugin 'neoclide/coc.nvim'
" Plugin 'amiralies/coc-elixir'
" Plugin 'neomake/neomake'

" Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'JamshedVesuna/vim-markdown-preview'

"" Custom text objects
Plugin 'kana/vim-textobj-user'
Plugin 'vim-scripts/argtextobj.vim'
Plugin 'PeterRincker/vim-argumentative'

"" Color schemes
Plugin 'altercation/vim-colors-solarized'
Plugin 'lifepillar/vim-solarized8'
Plugin 'rakr/vim-one'
Plugin 'colepeters/spacemacs-theme.vim'
Plugin 'liuchengxu/space-vim-dark'
Plugin 'jonathanfilip/vim-lucius'
" Plugin 'NLKNguyen/papercolor-theme'
Plugin 'sjl/badwolf'
Plugin 'nanotech/jellybeans.vim'
Plugin 'morhetz/gruvbox'
Plugin 'chriskempson/base16-vim'
Plugin 'ayu-theme/ayu-vim'
Plugin 'flazz/vim-colorschemes'
" Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'vim-scripts/mayansmoke'
Plugin 'dmcgrady/vim-lucario'
Plugin 'tomasiser/vim-code-dark'
" Plugin 'fenetikm/falcon'

Plugin 'tpope/vim-repeat'  " enable repeating supported plugin maps with '.'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'idanarye/vim-merginal'
Plugin 'cohama/agit.vim'
Plugin 'tpope/vim-rhubarb'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-dispatch'

Plugin 'regedarek/ZoomWin'  " <c-w>o to activate

" Plugin 'rking/ag.vim'  " The Silver Searcher
Plugin 'mileszs/ack.vim'
" Plugin 'wincent/ferret'  " Better Silver Searcher?

Plugin 'tpope/vim-vinegar'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimfiler.vim'
Plugin 'Shougo/deoplete.nvim'
Plugin 'scrooloose/nerdtree'
Plugin 'rizzatti/dash.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'alvan/vim-closetag'
Plugin 'yssl/QFEnter'
Plugin 'drmingdrmer/vim-toggle-quickfix'
Plugin 'whiteinge/diffconflicts'
Plugin 'majutsushi/tagbar'

if has('nvim')
  "" Neovim specific
  Plugin 'kassio/neoterm'
  Plugin 'radenling/vim-dispatch-neovim'
endif

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

set foldlevelstart=99
set foldmethod=indent

augroup elixir
  " let $MIX_ENV = 'test'
  set foldmethod=syntax
augroup END

autocmd FileType erlang set tabstop=4|set softtabstop=4|set shiftwidth=4|set expandtab
autocmd FileType cpp set tabstop=4|set softtabstop=4|set shiftwidth=4|set expandtab

" Check if any buffers were changed outside of Vim.
autocmd FocusGained * checktime
" But ask before reloading.
set noautoread

" Search settings
set hlsearch
set ignorecase
set smartcase
set incsearch

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.beam,*/_build/*

set tags=./.git/tags,./tags,tags

" Map shift-tab to omnicomplete
inoremap <S-TAB> <C-X><C-O>

" Open $MYVIMRC with <leader>v
nmap <leader>v :tabedit $MYVIMRC<CR>
" Auto source $MYVIMRC after save
autocmd bufwritepost .vimrc source $MYVIMRC

nnoremap <leader>d :Dash<CR>

if executable('rg')
  let g:ackprg = 'rg --vimgrep '
endif

nnoremap <leader>s :Ack! 
nmap <leader>q <Plug>window:quickfix:toggle

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

" Tab navigation
nnoremap tk  :tabfirst<CR>
nnoremap tl  :tabnext<CR>
nnoremap th  :tabprev<CR>
nnoremap tj  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

" Open terminal buffer in split window and move it to the bottom
nnoremap <leader>t :sb term://<CR> <C-w>J
" Open terminal buffer in a new tab
nnoremap <leader>T :tab sb term://<CR>

nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>N :NERDTreeFind<cr>

" Convenient access to BufExplorer
nnoremap <leader>b :BufExplorerHorizontalSplit<CR>
" nmap <leader>b <Plug>SelectBuf
" nmap <leader>p :CtrlPBuffer<CR>
nmap <leader>p :Buffers<CR>
nnoremap <C-p> :Files<CR>
nmap <leader>h :Helptags<CR>
nmap <leader>c :Colors<CR>

nnoremap <M-t> :split<CR> <C-w>J :Topen<CR>

nnoremap <leader>f :MixFormat<CR>

"" Fugitive config
" autocmd User fugitive 
"   \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
"   \   nnoremap <buffer> .. :edit %:h<CR> |
"   \ endif
autocmd BufReadPost fugitive://* set bufhidden=delete
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

"" Always-on rainbow parentheses
" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces

" set noshowmatch


"" Syntastic configuration
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:airline_theme = "papercolor"
let g:airline_powerline_fonts = 1
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
" let g:deoplete#enable_at_startup = 1

let g:qfenter_keymap = {}
let g:qfenter_keymap.vopen = ['<C-v>']
let g:qfenter_keymap.hopen = ['<C-CR>', '<C-s>', '<C-x>']
let g:qfenter_keymap.topen = ['<C-t>']

let g:ale_enabled = 0
" let g:ale_elixir_elixir_ls_release = '/Users/jvoegele/local/elixir-ls'
" let g:ale_linters = {}
" let g:ale_linters.elixir = ['elixir-ls', 'credo', 'dialyxir']

"" Needed by textobj-rubyblock:
" runtime macros/matchit.vim

set background=dark
colorscheme PaperColor
set colorcolumn=100,120

if has('nvim')
  " Use <Esc> to exit terminal mode and <C-v><Esc> to send verbatim escape to terminal buffer
  tnoremap <Esc> <C-\><C-n>
  tnoremap <C-l><Esc> <Esc>
  set t_Co=256
  set termguicolors
  highlight! link TermCursor Cursor
  highlight! TermCursorNC guibg=red guifg=white ctermbg=1 ctermfg=15
endif

if has('gui_running')
  " set macligatures
  set guifont=Fira\ Code:h13
  " set guifont=Source\ Code\ Pro:h14
  " set background=dark
  " colorscheme PaperColor
endif

if has('gui_vimr')
  " set background=dark
  " colorscheme PaperColor
  " colorscheme space-vim-dark
endif

" autocmd VimEnter * set background=dark | colorscheme PaperColor
