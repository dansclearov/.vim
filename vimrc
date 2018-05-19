" Disable Vi compatibility (recommended to be the first line)
set nocompatible

" Set leader key from '\' to ' '
let mapleader = " "

syntax enable

set background=dark
colorscheme solarized

" Make the backspace behave in a normal way
set backspace=indent,eol,start

set encoding=utf-8

set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab " expand tabs into spaces

set autoread

" Remove annoying beeping sound
set visualbell
set noerrorbells

" In the lower part of the window
set showcmd " display an incomplete command
set ruler " display cursor position
set showmode

set number " set line numbers
set cursorline
set wildmenu " set command-line completion
set ttyfast
set lazyredraw " redraw only when needed
set showmatch " briefly jump to the matching bracket when one is inserted
set title " change the window's title to a more useful one
set scrolloff=3 " number of lines to keep above/below the cursor

" Plugins and indentation based on filetype
filetype plugin indent on

set history=500

set incsearch " incremental search
set hlsearch " highlight mathes when searcing
set ignorecase
set smartcase " overrides the ignorecase option when the search pattern contains uppercase characters

set autoindent " use the indent of the previous line to indent a newly created line
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
