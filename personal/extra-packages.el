;;;Need the following packages:
;; 2. Something for rails (found rinari... won't install thru elpa/marm...)
;; 5. nxhtml

;; rinari is problematic right now since the install instructions
;; installed an alternate version of inf-ruby

;; nxhtml is not emacs24 compliant yet.

(defvar extra-packages
  '(gnuplot ess rvm rinari w3m sr-speedbar csharp-mode)
  "A further list of packages to ensure are installed at launch.")

(dolist (p extra-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(provide 'extra-packages)
