(package-initialize)

(load "~/.emacs.d/custom.el")
(load "~/.emacs.d/packages.el")
(load "~/.emacs.d/major-modes.el") ; ...bultin
(load "~/.emacs.d/minor-modes.el") ; ...bultin

(setq user-full-name "Dan Sclearov"
      user-mail-address "dansclearov@gmail.com")

(load-theme 'gruvbox t)

;; Don't use messages that you don't read
(setq initial-scratch-message "")
(setq inhibit-startup-message t)

;; Add the system clipboard to the kill ring
(setq save-interprogram-paste-before-kill t)

(toggle-frame-fullscreen)

;; Don't let Emacs hurt your ears
(setq visible-bell t)

(setq inhibit-startup-echo-area-message "dan")

(setq custom-file "~/.emacs.d/custom.el")

;; UTF-8 as default encoding
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

;; disable auto-save and auto-backup
(setq auto-save-default nil)
(setq make-backup-files nil)

(setq-default word-wrap t)

(setq-default cursor-type 'bar)

(setq-default mode-line-format
      (list
       "[%*]"
       " "
       (propertize "%b" 'face 'font-lock-keyword-face) ; buffer name
       " ("
       (propertize "%m" 'face 'font-lock-string-face) ; major mode
       ") "
       '(:eval (when buffer-file-name (propertize "%I" 'face 'font-lock-constant-face))) ; size
       ))

(add-hook 'before-save-hook 'delete-trailing-whitespace)
