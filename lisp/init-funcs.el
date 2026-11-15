(require 'ansi-color)
(defun display-ansi-colors ()
    "Interpret ANSI color escape sequences in the current buffer."
    (interactive)
    (let ((inhibit-read-only t))
      (ansi-color-apply-on-region (point-min) (point-max)))
    (read-only-mode t))


(provide 'init-funcs)
