;; -*- lexical-binding: t; -*-

(defalias 'yes-or-no-p 'y-or-n-p)

(global-set-key (kbd "M-f") 'forward-to-word)

(global-set-key (kbd "M-c") 'compile)
;; (global-set-key (kbd "M-s") 'shell)

(global-set-key (kbd "C-=") 'text-scale-adjust)
(global-set-key (kbd "C--") 'text-scale-adjust)

(global-set-key (kbd "M-] e") 'flymake-goto-next-error)
(global-set-key (kbd "M-[ e") 'flymake-goto-prev-error)

(defun smart-open-line-above ()
  "在当前行上方插入一个空行，并根据当前模式缩进。"
  (interactive)
  (move-beginning-of-line nil)
  (newline-and-indent)
  (forward-line -1)
  (indent-according-to-mode))
(global-set-key (kbd "C-o") 'smart-open-line-above)

(provide 'init-keymap)
