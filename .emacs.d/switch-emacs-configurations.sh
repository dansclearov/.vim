rm -rf ~/.emacs.d
if [ "$1" = "spacemacs" ]; then
    ln -sf ~/spacemacs/ ~/.emacs.d
elif [ "$1" = "prelude" ]; then
    ln -sf ~/prelude/ ~/.emacs.d
elif [ "$1" = "doom" ]; then
    ln -sf ~/doom/ ~/.emacs.d
else
    ln -sf ~/dotfiles/.emacs.d/ ~/.emacs.d
fi
