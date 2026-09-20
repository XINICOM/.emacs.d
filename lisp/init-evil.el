;; -*- lexical-binding: t; -*-

(use-package evil
  :init
  ;; (setq evil-overriding-maps nil)
  ;; (setq evil-want-keybinding nil)
  (setq evil-undo-system 'undo-redo)
  (setq evil-want-C-u-scroll t)
  (with-eval-after-load 'evil-maps
    (define-key evil-motion-state-map (kbd "RET") nil)))
  :config
  (evil-mode)

;; undifine some keymap in origin emacs
(global-set-key (kbd "M-n") nil)
(global-set-key (kbd "M-p") nil)

(with-eval-after-load 'evil
  ;; reset some key I setted in emacs
  (evil-define-key '(normal visual insert motion) 'global
    (kbd "C-f") 'forward-char
    (kbd "C-b") 'backward-char
    (kbd "C-n") 'next-line
    (kbd "C-p") 'previous-line
    (kbd "C-e") 'move-end-of-line
    (kbd "C-a") 'crux-move-beginning-of-line
    (kbd "C-k") 'crux-smart-kill-line
    (kbd "C-j") 'newline-and-indent
    (kbd "C-o") 'open-line
    (kbd "C-y") 'yank

    (kbd "C-M-j") 'mc/mark-next-like-this
    (kbd "C-M-k") 'mc/mark-previous-like-this
  )

  ;; evil key map
  (evil-define-key 'normal 'flymake-mode
    (kbd "]e") 'flymake-goto-next-error
    (kbd "[e") 'flymake-goto-prev-error
  )

  ;; dired mode
  ;; (evil-define-key 'override 'dired-mode
  ;;   (kbd "+") 'dired-create-directory
  ;;   (kbd "d") 'dired-flag-file-deletion
  ;;   (kbd "R") 'dired-do-rename
  ;;   (kbd "C") 'dired-do-copy
  ;;   (kbd "g") 'revert-buffer
  ;;   (kbd "x") 'dired-do-flagged-delete
  ;;   (kbd "u") 'dired-unmark
  ;;   (kbd "U") 'dired-unmark-all-marks
  ;;   (kbd "t") 'dired-toggle-marks
  ;; )
 
  (advice-add 'save-buffer :after
  	    (lambda (&rest _)
  	    (when (evil-insert-state-p)
  		(evil-normal-state))))

  ;; drag-stuff
  (global-set-key (kbd "M-j") 'drag-stuff-down)
  (global-set-key (kbd "M-k") 'drag-stuff-up)
)

(provide 'init-evil)
