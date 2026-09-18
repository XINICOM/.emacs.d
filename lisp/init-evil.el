;; -*- lexical-binding: t; -*-

(use-package evil
  :init
  (setq evil-want-keybinding nil)
  (setq evil-want-C-u-scroll t)
  (evil-mode)
  (with-eval-after-load 'evil-maps
    (define-key evil-motion-state-map (kbd "RET") nil)))

;; evil key map
(evil-define-key 'normal flymake-mode
  (kbd "]e") 'flymake-goto-next-error
  (kbd "[e") 'flymake-goto-prev-error)

(advice-add 'save-buffer :after
	    (lambda (&rest _)
	      (when (evil-insert-state-p)
		(evil-normal-state))))

(with-eval-after-load 'evil
  (define-key evil-normal-state-map (kbd "C-n") 'next-line)
  (define-key evil-normal-state-map (kbd "C-p") 'previous-line)
  (define-key evil-visual-state-map (kbd "C-n") 'next-line)
  (define-key evil-visual-state-map (kbd "C-p") 'previous-line)
  (define-key evil-normal-state-map (kbd "C-e") 'move-end-of-line))

(provide 'init-evil)
