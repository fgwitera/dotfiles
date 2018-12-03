set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'fugalh/desert.vim'

call vundle#end()            " required
filetype plugin indent on    " required

colorscheme desert

syntax enable

" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc

let mapleader = ","

set list
set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

" Tabs and spaces
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

" Show line number
set relativenumber
" Highlight current line
set cursorline
" visual autocomplete for command menu
set wildmenu
" Show parenthesis matches
set showmatch
" Minumum lines to keep above and below cursor
set scrolloff=8

" search as characters are entered
set incsearch
" highlight matches
set hlsearch
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
" ignore case when searching
set ignorecase

set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" space open/closes folds
nnoremap <leader><TAB> za
set foldmethod=indent   " fold based on indent level

" more convenient esc
inoremap jk <Esc>
inoremap kj <Esc>

" Insert mode shortcut
inoremap <C-j> <Down>
inoremap <C-k> <Up>

" Insert blank lines without going into insert mode
nmap t o<ESC>k
nmap T O<ESC>j
