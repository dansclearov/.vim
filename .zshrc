export PATH="/home/dan/anaconda3/bin:$PATH"
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Emacs keybindings
bindkey -e

# Aliases
# For competitive programming
alias dcp='g++ -std=c++14 -Wall -Wextra -lm'
# For jekyll
alias release="JEKYLL_ENV=production bundle exec jekyll build -d 'docs'"
alias devel="bundle exec jekyll liveserve --drafts"

# Source if exists
# Fzf
# <C-T> - paste the selected files and directories in the terminal
# <C-R> - paste the selected command from history into the terminal
# <A-C> - cd into the selected directory
# some/path/**<TAB> - autocompletion
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# Autopairs
[ -f ~/.autopair.zsh ] && source ~/.autopair.zsh # automatically close brackets
