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

" Tabs and spaces
set tabstop=4
set softtabstop=4
set expandtab

" Show line number
set relativenumber

" Highlight current line
set cursorline

" Show parenthesis matches
set showmatch

" search as characters are entered
set incsearch
" highlight matches
set hlsearch            
