;; -*- lexical-binding: t; -*-

(setq ring-bell-function 'ignore)

;; encoding
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)

;; gc
(setq gc-cons-threshold most-positive-fixnum)

;; no startup page
(setq inhibit-startup-screen t)

;; customize
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(column-number-mode 1)

(provide 'init-startup)
