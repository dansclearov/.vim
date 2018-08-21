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
(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode 1))
(use-package company ; auto-completion
  :ensure t
  :config
  (global-company-mode)
  ;; Add yasnippet to company-mode backends
  (push '(company-semantic :with company-yasnippet) company-backends))
;; (use-package helm
;;   :ensure t
;;   :config (helm-mode 1)
;;   :bind
;;   ("M-x" . helm-M-x)
;;   ("C-x C-f" . helm-find-files))
;; (use-package ivy
;;   :ensure t
;;   :config (ivy-mode 1))
(use-package dashboard ; startup screen
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-startup-banner 2)
  (setq dashboard-items '((recents  . 10)
			  (agenda . 5))))
(use-package expand-region
  :ensure t
  :bind ("C-=" . er/expand-region))
(use-package ace-window
  :ensure t
  :bind ("M-o" . ace-window))
(use-package org-journal
  :ensure t
  :config
  (setq org-journal-dir "~/org/journal/")
  (setq org-journal-file-format "%Y-%m-%d")
  (setq org-journal-find-file 'find-file))