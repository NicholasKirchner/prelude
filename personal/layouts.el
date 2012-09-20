(defun layout-bare ()
  "Return to a single window 80x24"
  (interactive)
  (if window-system
      (progn
        (set-frame-size (selected-frame) 80 24)
        (sr-speedbar-close)
        (delete-other-windows))))

(defun layout-programming ()
  "Create a good programming layout"
  (interactive)
  (if window-system
      (progn
        (layout-bare)
        (set-frame-size (selected-frame) 201 56)
        (setq sr-speedbar-width 36)
        (setq sr-speedbar-right-side nil)
        (sr-speedbar-open)
        (select-window (next-window))
        (split-window-horizontally)
        (select-window (next-window))
        (split-window-vertically))))

(defun layout-mail ()
  "Create a good gnus layout"
  (interactive)
  (if window-system
      (progn
        (layout-bare))))
