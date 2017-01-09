set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Colorsheme
Plugin 'git@github.com:fugalh/desert.vim.git'
Plugin 'scrooloose/nerdtree'

call vundle#end()            " required
filetype plugin indent on    " required

" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc

colorscheme desert

set list
set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

" Tabs and spaces
set tabstop=4
set softtabstop=4
set expandtab

" Show line number
set relativenumber
" Highlight current line
set cursorline
" visual autocomplete for command menu
set wildmenu            
" Show parenthesis matches
set showmatch

" search as characters are entered
set incsearch
" highlight matches
set hlsearch            
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" space open/closes folds
nnoremap <space> za     
set foldmethod=indent   " fold based on indent level

let mapleader = ","
" more convenient esc
inoremap jk <Esc>
inoremap kj <Esc>

" Insert blank lines without going into insert mode
nmap t o<ESC>k
nmap T O<ESC>j

