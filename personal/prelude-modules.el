(defvar prelude-modules
  '(prelude-c prelude-clojure prelude-coffee prelude-common-lisp prelude-css
              prelude-emacs-lisp prelude-haskell prelude-js prelude-latex
              prelude-lisp prelude-mediawiki prelude-perl prelude-programming
              prelude-ruby prelude-scheme prelude-scss prelude-xml
              prelude-erlang prelude-python
              ;;prelude-erc prelude-org
              )
  "A further list of packages to ensure are installed at launch.")

(dolist (p prelude-modules)
  (when (not (package-installed-p p))
    (package-install p)))

(provide 'prelude-modules)
