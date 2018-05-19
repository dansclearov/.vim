" Disable Vi compatibility (recommended to be the first line)
set nocompatible

" Set leader key from '\' to ' '
let mapleader = " "

set encoding=utf-8

syntax enable

set background=dark
colorscheme solarized

set tabstop=4
set softtabstop=4
set expandtab " expand tabs into spaces

set autoread

set ruler

set showmatch

" Remove annoying beeping sound
set visualbell
set noerrorbells

set number " set line numbers
set showcmd
set cursorline
set wildmenu
set lazyredraw
set showmatch
set title " change the window's title to a more useful one

" Plugins and indentation based on filetype
filetype plugin indent on

set history=500

set incsearch
set hlsearch
set smartcase

set autoindent
set smartindent
set wrap

nnoremap j gj
nnoremap k gk

nnoremap <leader>ev :vsp $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap <leader>ez :vsp ~/.zshrc<cr>

" Clear the screen
map <silent><leader><cr> :nohlsearch<cr>

" Move between windows faster
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Install vim plug if not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" All plugins need to be listed between these two lines
call plug#begin()

call plug#end()
