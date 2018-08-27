(use-package dired
  :config (progn
	    (setq dired-recursive-copies 'always
		  dired-recursive-deletes 'always)
		  ;; Dired listing switches
		  ;;  -a : Do not ignore entries starting with .
		  ;;  -l : Use long listing format.
		  ;;  -G : Do not print group names like 'users'
		  ;;  -h : Human-readable sizes like 1K, 234M, ..
		  ;;  -v : Do natural sort .. so the file names starting with . will show up first.
		  ;;  -F : Classify filenames by appending '*' to executables,
		  ;;       '/' to directories, etc.
		  (setq dired-listing-switches "-alGhvF --group-directories-first"))) ; default: "-al"

(use-package org-mode
  :bind (("C-c l" . org-store-link)
	 ("C-c a" . org-agenda)
	 ("C-c c" . org-capture)
	 ("C-c b" . org-switchb))
  :init
  (setq org-property-format "%s %s")
  (setq org-startup-truncated nil)
  (setq org-src-fontify-natively t))
