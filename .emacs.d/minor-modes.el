;; Interactively do things
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; Highlight matching bracket, parentheses, etc.
(show-paren-mode 1)

;; Refresh if changed outside of emacs
(global-auto-revert-mode 1)

;; Don't insert tabs
(setq-default indent-tabs-mode nil)

;; Who use the bar to scroll?
(scroll-bar-mode 0)

;; Hide the tool and menu bar
(tool-bar-mode 0)
(menu-bar-mode 0)

;; Auto insert closing bracket, parentheses, etc.
(electric-pair-mode 1)

;; Highlight current line
(global-hl-line-mode 1)

;; Prevent the cursor from blinking
(blink-cursor-mode 0)

;; Open file with cursor at the position you left it
(save-place-mode)

;; Enable flyspell only on modes derived from text mode
(dolist (hook '(text-mode-hook))
  (add-hook hook (lambda () (flyspell-mode 1))))
;; Check comments for spelling
(dolist (mode '(emacs-lisp-mode-hook
                python-mode-hook))
  (add-hook mode
            '(lambda ()
               (flyspell-prog-mode))))
