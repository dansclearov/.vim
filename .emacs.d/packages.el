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
  (setq yas-also-auto-indent-first-line t)
  (setq yas/indent-line 'fixed))

;; (use-package aggressive-indent
;;   :ensure t
;;   :config
;;   (global-aggressive-indent-mode 1))

(use-package define-word
  :ensure t
  :bind
  ("C-c d" . define-word-at-point)
  ("C-c D" . define-word))

;; (use-package synosaurus
;;   :ensure t
;;   :config
;;   (synosaurus-mode))

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

;; (use-package sr-speedbar
;;   :ensure t
;;   :bind
;;   ("C-," . sr-speedbar-toggle))

(use-package origami
  :ensure t
  :config (global-origami-mode)
  :bind
  ("C-'" . origami-forward-toggle-node)
  ("C-M-'" . origami-recursively-toggle-node)
  ("C-\"" . origami-show-only-node))

(use-package multiple-cursors
  :ensure t
  :bind
  ("C->" . mc/mark-next-like-this)
  ("C-<" . mc/mark-previous-like-this))

(use-package company
  :ensure t
  :config
  (global-company-mode)
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 0)
  (setq company-selection-wrap-around t)
  (setq company-tooltip-align-annotations t)

  ;; Add yasnippet to company-mode backends
  (push '(company-semantic :with company-yasnippet) company-backends)
  :bind (:map company-active-map
              ("<return>" . nil)
              ("RET" . nil)
              ("TAB" . nil)
              ("<tab>" . nil)
              ("C-<return>" . company-complete-selection)))

(use-package smart-comment
  :bind ("M-;" . smart-comment))

(use-package company-quickhelp
  :ensure t
  :config
  (company-quickhelp-mode))

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

;; (use-package recentf
;;   :ensure t
;;   :config
;;   (recentf-mode 1)
;;   (setq recentf-max-menu-items 25)
;;   :bind
;;   ("C-x C-r" . recentf-open-files))

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

(use-package elfeed
  :ensure t
  :bind
  ("C-x w" . elfeed)
  :config
  (setq-default elfeed-search-filter "@1-week-ago +unread "))

(use-package elfeed-org
  :ensure t
  :config
  (elfeed-org)
  (setq rmh-elfeed-org-files (list "~/.emacs.d/private/elfeed.org")))

(use-package org-journal
  :ensure t
  :defer t
  :config
  (setq org-journal-dir "~/org/journal/")
  (setq org-journal-file-format "%Y-%m-%d")
  (setq org-journal-find-file 'find-file))

(use-package perspective
  :ensure t
  :config
  (persp-mode))

;; Does what ido-everywhere is supposed to do
(use-package ido-completing-read+
  :ensure t
  :config
  (ido-ubiquitous-mode 1))

;; (use-package ido-vertical-mode
;;   :ensure t
;;   :init
;;   (ido-vertical-mode 1)
;;   (setq ido-vertical-define-keys 'C-n-and-C-p-only))

;; Enhanced M-x
(use-package smex
  :ensure t
  :config
  (smex-initialize)
  :bind
  ("M-x" . smex)
  ("M-X" . smex-major-mode-commands)
  ("C-c C-c M-x" . execute-extended-command)) ; old M-x

;; (use-package wc-mode
;;   :ensure t
;;   :init (setq wc-modeline-format "%tw words")
;;   :bind ("C-c w" . wc-mode))
