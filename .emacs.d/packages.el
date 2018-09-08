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
  (yas-global-mode 1)
  (setq yas-triggers-in-field t)
  (setq yas-indent-line 'auto)
  (setq yas-also-auto-indent-first-line t))

(use-package peep-dired
  :ensure t
  :defer t
  :bind (:map dired-mode-map
              ("P" . peep-dired))
  :config
  (setq peep-dired-cleanup-on-disable t)
  (setq peep-dired-enable-on-directories t)
  (setq peep-dired-ignored-extensions '("mkv" "iso" "mp4")))

(use-package racket-mode
  :ensure t)

(use-package company
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

(use-package fish-mode
  :ensure t)

(use-package nov
  :ensure t)

(use-package haskell-mode
  :ensure t
  :defer t
  :config (setq haskell-process-type 'stack-ghci))

(use-package tex-site
  :ensure auctex
  :config
  (setq TeX-auto-save t)
  (setq TeX-parse-self t)
  ;; Use pdf-tools to open PDF files
  (setq TeX-view-program-selection '((output-pdf "PDF Tools"))
        TeX-source-correlate-start-server t)
  ;; Update PDF buffers after successful LaTeX runs
  :hook (TeX-after-compilation-finished-functions . TeX-revert-document-buffer))

(use-package expand-region
  :ensure t
  :bind ("C-=" . er/expand-region))

(use-package ace-window
  :ensure t
  :bind ("M-o" . ace-window))

(use-package pdf-tools
  :ensure t
  :config
  (pdf-tools-install))

;; (use-package flycheck
;;   :ensure t
;;   :config (global-flycheck-mode))

(use-package org-journal
  :ensure t
  :defer t
  :config
  (setq org-journal-dir "~/org/journal/")
  (setq org-journal-file-format "%Y-%m-%d")
  (setq org-journal-find-file 'find-file))

;; (use-package wc-mode
;;   :ensure t
;;   :init (setq wc-modeline-format "%tw words")
;;   :bind ("C-c w" . wc-mode))
