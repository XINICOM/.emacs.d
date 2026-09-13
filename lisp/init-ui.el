;; -*- lexical-binding: t; -*-

(use-package vscode-dark-plus-theme
  :init (load-theme 'vscode-dark-plus t))

(toggle-frame-maximized)

;; font
;; origin: https://www.bilibili.com/video/BV13g4y167Zn/?p=25&share_source=copy_web&vd_source=ab502ecc8ee90738e4605c93bdb6a080
;; update: https://juejin.cn/post/7085254713595133960
;; for me just need "Microsoft YaHei Mono-14"
(set-face-attribute 'default nil :font "Microsoft YaHei Mono-16") ; combine "YaHei" and "Consolas"

(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode t)
(global-hl-line-mode t)

(provide 'init-ui)

;; (use-package smart-mode-line
;;   :init
;;   (setq sml/no-confirm-load-theme t
;; 	sml/theme 'respectful)
;;   (sml/setup))
