#!/bin/bash
# Haven't tested it yet, but it must work

# Init all submodules
git submodule init
git submodule update

# Vim
ln -rs .vim/ ~/.vim/
mkdir ~/.vim/.swp/
mkdir ~/.vim/.undo/

# Tmux
ln -rs .tmux/plugins/ ~/.tmux/plugins/
ln -rs .tmux/tmux.conf ~/.tmux.conf

# Zsh
ln -rs .zshrc ~/.zshrc
ln -rs .oh-my-zsh/ ~/.oh-my-zsh

# Git
ln -rs .gitconfig ~/.gitconfig

# Emacs
ln -rs .emacs.d ~/.emacs.d

# Spacemacs
ln -rs .spacemacs.d ~/.spacemacs.d
