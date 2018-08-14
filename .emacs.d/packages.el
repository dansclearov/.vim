(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package zenburn-theme
  :ensure t
  :defer t)
(use-package gruvbox-theme
  :ensure t
  :defer t)
(use-package markdown-mode
  :ensure t)
(use-package company ; autocompletion
  :ensure t
  :config
  (global-company-mode))
(use-package dashboard ; startup screen
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-startup-banner 2)
  (setq dashboard-items '((recents  . 10)
			  (agenda . 5))))
(use-package yasnippet
  :ensure t
  :config (yas-global-mode 1)
  :bind
  ("TAB" . nil) ; disable tab for expansion
  ("<tab>" . nil) ; some major modes are bad boys
  ("C-<return>" . yas-expand)
  ("C-RET" . yas-expand))
(use-package expand-region
  :ensure t
  :bind ("C-=" . er/expand-region))
(use-package ace-window
  :ensure t
  :bind ("M-o" . ace-window))
(use-package flyspell-correct
  :ensure t)
(use-package flyspell-correct-ido
  :bind (:map flyspell-mode-map
	      ("C-;" . flyspell-correct-previous-word-generic)))
;; (define-key flyspell-mode-map (kbd "C-;") 'flyspell-correct-previous-word-generic)
