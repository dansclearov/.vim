#!/bin/bash
# Haven't tested it yet, but it must work

# Init all submodules
git submodule init
git submodule update

# Vim
ln -rs .vim/ ~/.vim/

# Tmux
ln -rs .tmux/plugins/ ~/.tmux/plugins/
ln -rs .tmux/tmux.conf ~/.tmux.conf

# Zsh
ln -rs .zshrc ~/.zshrc
ln -rs .oh-my-zsh/ ../.oh-my-zsh
