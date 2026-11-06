;; -*- lexical-binding: t; -*-
;; when you use evil, some keymap settings will be override in init-evil.el

(defalias 'yes-or-no-p 'y-or-n-p)

(global-set-key (kbd "M-f") 'forward-to-word)

(global-set-key (kbd "M-c") 'compile)
;; (global-set-key (kbd "M-s") 'shell)

(global-set-key (kbd "C-=") 'text-scale-adjust)
(global-set-key (kbd "C--") 'text-scale-adjust)

(global-set-key (kbd "M-] e") 'flymake-goto-next-error)
(global-set-key (kbd "M-[ e") 'flymake-goto-prev-error)

(defun my-open-line-above ()
  "在当前行上方插入空行"
  (interactive)
  (move-beginning-of-line nil)
  (newline-and-indent)
  (forward-line -1))
(global-set-key (kbd "C-o") 'my-open-line-above)

(provide 'init-keymap)
