export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH=/home/dan/.oh-my-zsh

GEOMETRY_PROMPT_PREFIX="" # remove the new line
ZSH_THEME="geometry/geometry"

plugins=(
  git # common git aliases
  zsh-autosuggestions zsh-history-substring-search zsh-syntax-highlighting # fish-like features
)
source $ZSH/oh-my-zsh.sh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=4' # highlighting which blends better with my theme

export EDITOR="vim"

# Vim-like keybindings
bindkey -v 
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
bindkey '^P' history-search-backward
bindkey '^N' history-search-forward

# Aliases
# For competitive programming
alias dcp='g++ -std=c++14 -Wall -Wextra -lm'
# For jekyll
alias release="JEKYLL_ENV=production bundle exec jekyll build -d 'docs'"
alias devel="bundle exec jekyll liveserve --drafts"
