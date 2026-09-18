;; -*- lexical-binding: t; -*-

(use-package evil
  :init
  (setq evil-want-keybinding nil)
  (setq evil-want-C-u-scroll t)
  (evil-mode)
  (with-eval-after-load 'evil-maps
    (define-key evil-motion-state-map (kbd "RET") nil)))

;; undifine some keymap in origin emacs
(global-set-key (kbd "M-n") nil)
(global-set-key (kbd "M-p") nil)

(with-eval-after-load 'evil
  ;; reset some key I setted in emacs
  (evil-define-key '(normal visual insert motion) 'global
    (kbd "C-n") 'next-line
    (kbd "C-p") 'previous-line
    (kbd "C-e") 'move-end-of-line
    (kbd "C-a") 'crux-move-beginning-of-line
    (kbd "C-k") 'crux-smart-kill-line
  )

  ;; evil key map
  (evil-define-key 'normal 'flymake-mode
    (kbd "]e") 'flymake-goto-next-error
    (kbd "[e") 'flymake-goto-prev-error
  )
  
  (advice-add 'save-buffer :after
  	    (lambda (&rest _)
  	    (when (evil-insert-state-p)
  		(evil-normal-state))))

  ;; drag-stuff
  (global-set-key (kbd "M-j") 'drag-stuff-down)
  (global-set-key (kbd "M-k") 'drag-stuff-up)
)

(provide 'init-evil)
