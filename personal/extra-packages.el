(defvar extra-packages
  '(gnuplot ess rvm rinari w3m sr-speedbar csharp-mode csv-mode rhtml-mode)
  "A further list of packages to ensure are installed at launch.")

(dolist (p extra-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(provide 'extra-packages)
