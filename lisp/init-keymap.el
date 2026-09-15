;; -*- lexical-binding: t; -*-

(defalias 'yes-or-no-p 'y-or-n-p)

(global-set-key (kbd "M-f") 'forward-to-word)

(global-set-key (kbd "M-c") 'compile)

(global-set-key (kbd "C-=") 'text-scale-adjust)
(global-set-key (kbd "C--") 'text-scale-adjust)

(provide 'init-keymap)
