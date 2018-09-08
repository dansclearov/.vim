(use-package dired
  :bind (:map dired-mode-map
              ;; Make dired use the existing buffer, instead of creating a new one
              ("RET" . dired-find-alternate-file)
              ("^" . (lambda () (interactive) (find-alternate-file ".."))))
  :config
  (setq dired-recursive-copies 'always
        dired-recursive-deletes 'always)

  (setq dired-dwim-target t) ; copy or move to the directory in the other window
  ;; Dired listing switches:
  ;;  -a :: Do not ignore entries starting with .
  ;;  -l :: Use long listing format.
  ;;  -G :: Do not print group names like 'users'
  ;;  -h :: Human-readable sizes like 1K, 234M, ..
  ;;  -v :: Do natural sort .. so the file names starting with . will show up first.
  ;;  -F :: Classify filenames by appending '*' to executables,
  ;;       '/' to directories, etc.
  (setq dired-listing-switches "-alGhvF --group-directories-first")) ; default: "-al"

(use-package org-mode
  :bind (("C-c l" . org-store-link)
	 ("C-c a" . org-agenda)
	 ("C-c c" . org-capture)
	 ("C-c b" . org-switchb))
  :init
  (setq org-property-format "%s %s")
  (setq org-startup-truncated nil)
  (setq org-src-fontify-natively t)
  (setq org-highlight-latex-and-related '(latex)))
