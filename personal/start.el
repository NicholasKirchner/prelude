;;Add sr-speedbar & w3m to load paths

(add-to-list 'load-path (concat prelude-personal-dir "vendor/"))
;(add-to-list 'load-path (concat prelude-personal-dir "vendor/w3m"))
(add-to-list 'load-path "~/emacs/personal/vendor/rhtml")

;; Decent font
(add-to-list 'default-frame-alist
             '(font . "Inconsolata-dz-12"))

;; Turn off LaTeX super/sub scripts, and large sectioning fonts
(setq font-latex-fontify-script nil)
(setq font-latex-fontify-sectioning 'color)

;; Get a good working directory on start-up
(cd "~")

;; Enable epa (for encryption of .authinfo)
(require 'epa)
(epa-file-enable)

;; Configure and enable emacs-w3m (Used for rendering HTML in gnus)
(setq w3m-init-file "~/emacs/personal/w3m/start.el")
(setq w3m-command "/opt/local/bin/w3m")
(require 'w3m)

;; Initialize ESS
(require 'ess-site)

;; Configure gnuplot-mode
(setq gnuplot-program "/opt/local/bin/gnuplot")
(setq auto-mode-alist
      (append
       (list
        '("\\.gp$" . gnuplot-mode)
        '("\\.gnuplot$" . gnuplot-mode))
       auto-mode-alist))

;; load octave-mode for .m files
(setq auto-mode-alist
      (append
       (list
        '("\\.m$" . octave-mode))
       auto-mode-alist))

;; load python-mode for .sage files
(setq auto-mode-alist
      (append
       (list
        '("\\.sage$" . python-mode))
       auto-mode-alist))

;; Configure speedbar
(require 'speedbar)
(speedbar-add-supported-extension ".rb")
(speedbar-add-supported-extension ".R")
(speedbar-add-supported-extension ".gp")
(speedbar-add-supported-extension ".gnuplot")

;; Configure sr-speedbar
(require 'sr-speedbar)
(setq sr-speedbar-width 29)
(setq sr-speedbar-right-side nil)

(require 'rhtml-mode)

(setq tetris-score-file "~/emacs/personal/tetris")
