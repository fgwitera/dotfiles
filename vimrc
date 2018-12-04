" -- bootstrap -----------------------------------------------------------------
set nocompatible        " use vim defaults instead of vi ones

let mapleader = ","     " change leader key to ,

" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc

" -- file type detection -------------------------------------------------------
filetype off            " required
filetype plugin on      " trigger file type specific plugins
filetype indent on      " indent based on file type syntax

" -- command mode --------------------------------------------------------------
set wildmenu            " enable tab completion menu
if exists ("&wildignorecase")
    set wildignorecase
endif

" sudo then write
cabbrev w!! w !sudo tee % >/dev/null

" -- display -------------------------------------------------------------------
set cursorline          " highlight current line
set relativenumber      " show relative line numbers

set list
set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

syntax enable

if has("folding")
    set foldenable          " enable folding
    set foldlevelstart=10   " open most folds by default
    set foldnestmax=10      " 10 nested fold max
    " toggle folds
    nnoremap <Space> za
    space open/closes folds
    set foldmethod=indent   " fold based on indent level
endif

" -- navigation ----------------------------------------------------------------

" scroll slightly faster
nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>
map <C-Up> <C-y>
map <C-Down> <C-e>

" scroll by visual lines, useful when wrapping is enabled
nnoremap j gj
nnoremap <Down> gj
nnoremap k gk
nnoremap <Up> gk

set scrolloff=8     " minimal number of columns to keep around the cursor

if has("vertsplit")
    " split current window vertically
    nnoremap <leader>_ <C-w>v<C-w>l
    set splitright  " when splitting vertically, split to the right
endif
if has("windows")
    " split current window horizontally
    nnoremap <leader>- <C-w>s
    set splitbelow  " when splitting horizontally, split below
endif

" window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" switch between windows by hitting <Tab> twice
nnoremap <silent> <Tab><Tab> <C-w>w

" window resizing
map <S-Left> <C-w><
map <S-Down> <C-w>-
map <S-Up> <C-w>+
map <S-Right> <C-w>>

" <leader>q quits the current window
nnoremap <silent> <leader>q :q<CR>
inoremap <silent> <leader>q <ESC>:q<CR>

" create a new tab
nnoremap <silent> <leader>t :tabnew<CR>

" -- editing -------------------------------------------------------------------
set showmatch     " briefly jumps the cursor to the matching brace on insert
set matchtime=4   " blink matching braces for 0.4s

" Tabs and indent
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

" make Y consistent with C and D by yanking up to end of line
noremap Y y$

" use <leader>d to delete a line without adding it to the yanked stack
nnoremap <silent> <leader>d "_d

" more convenient esc
inoremap jk <Esc>
inoremap kj <Esc>

" Insert mode shortcut
inoremap <C-j> <Down>
inoremap <C-k> <Up>

" Insert blank lines without going into insert mode
nmap t o<ESC>k
nmap T O<ESC>j

" -- searching -----------------------------------------------------------------
" search as characters are entered
set incsearch
" highlight matches
set hlsearch
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
" ignore case when searching
set ignorecase

" -- plugins -------------------------------------------------------------------
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'fugalh/desert.vim'

call vundle#end()            " required

colorscheme desert
