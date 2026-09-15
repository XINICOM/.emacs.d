;; -*- lexical-binding: t; -*-

(use-package restart-emacs)

(use-package drag-stuff
  :bind (("M-p" . drag-stuff-up)
	 ("M-n" . drag-stuff-down)))

(use-package crux
  :bind (("C-k" . crux-smart-kill-line)
     	 ("C-a" . crux-move-beginning-of-line)
         ("C-x ," . crux-find-user-init-file)
	 ("C-S-d" . crux-duplicate-current-line-or-region)))

;; 1. 配置基础库 Ivy
(use-package ivy
  :ensure t
  :config
  (ivy-mode 1)
  :custom
  (ivy-use-virtual-buffers t)      ; 可选，将 recentf/书签纳入虚拟缓冲区
  (enable-recursive-minibuffers t) ; 可选，允许在 minibuffer 中再次触发 minibuffer
  )
;; 2. 配置 Counsel（对 Emacs 命令的增强）
(use-package counsel
  :ensure t
  :after ivy                       ; 关键：确保在 Ivy 加载后配置
  :config
  (counsel-mode 1)                 ; 启用 counsel-mode（会自动绑定部分常用键，如 M-x, C-x C-f）
  )
;; 3. 配置 Swiper（对搜索的增强）
;; (use-package swiper
;;   :ensure t
;;   :after ivy                       ; 关键：确保在 Ivy 加载后配置
;;   :bind
;;   ("C-s" . swiper))


;; (use-package company
;;   :hook (after-init . global-company-mode)
;;   :config (setq company-minimum-prefix-length 1
;;                 company-show-quick-access t))
(use-package company
  :ensure t
  :hook (after-init . global-company-mode)
  :config
  (setq lsp-clangd-binary-path "C:/Users/XINIC/AppData/Local/nvim-data/mason/packages/clangd/clangd_22.1.6/bin/clangd.exe")
  (setq lsp-completion-provider :none)
  (setq company-minimum-prefix-length 1
        company-show-quick-access t
        company-backends '((company-capf :with company-yasnippet)
			   company-files
                           (company-keywords :with company-yasnippet) 
			   company-dabbrev-code
			   company-dabbrev)))

(setq lsp-format-buffer-on-save t)


;; posframe
(use-package ivy-posframe
  :ensure t
  :after (ivy counsel)
  :config
  (setq ivy-posframe-display-functions-alist
        '(
	  ;; (swiper . ivy-posframe-display-at-frame-center)
          (complete-symbol . ivy-posframe-display-at-point)
          (counsel-M-x . ivy-posframe-display-at-frame-center)
          (counsel-find-file . ivy-posframe-display-at-frame-center)
          (ivy-switch-buffer . ivy-posframe-display-at-frame-center)
          (t . ivy-posframe-display-at-frame-center))))
(add-hook 'after-init-hook
          (lambda ()
            (require 'ivy-posframe)
            (ivy-posframe-mode 1)))

(use-package ace-window
  :bind (("C-x o" . 'ace-window)
	 ("M-o" . 'ace-window)))

;; https://emacs-lsp.github.io/lsp-mode/page/installation/
(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-c l")
  :hook ((c-mode . lsp-deferred)
         (c++-mode . lsp-deferred)
         (lsp-mode . lsp-enable-which-key-integration))
  :commands (lsp lsp-deferred))
(use-package lsp-ui :commands lsp-ui-mode)
(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
(use-package lsp-treemacs :commands lsp-treemacs-errors-list)
(use-package dap-mode)


(use-package yasnippet
  :ensure t
  :hook (after-init . yas-global-mode))

(use-package yasnippet-snippets
  :ensure t
  :after yasnippet)


(use-package multiple-cursors
  :bind (("C-M-n" . mc/mark-next-like-this)            ; 添加下一个匹配项
         ("C-M-p" . mc/mark-previous-like-this)        ; 添加上一个匹配项
         ("C-c C-<" . mc/mark-all-like-this)           ; 标记所有匹配项
         ("C-S-c C-S-c" . mc/edit-lines)               ; 为选中区域每一行添加光标
         ("C-S-<mouse-1>" . mc/add-cursor-on-click)))  ; 鼠标点击添加光标



(use-package which-key
    :config
    (which-key-mode))


;; (use-package which-key
;;   :defer nil
;;   :config (which-key-mode))


(provide 'init-packages)


;; (use-package benchmark-init
;;   :init (benchmark-init/activate)
;;   :hook (after-init . benchmark-init/deactivate))

