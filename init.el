;; -*- lexical-binding: t; -*-

(add-to-list 'load-path
	     (expand-file-name (concat user-emacs-directory "lisp")))

(require 'init-const)

(require 'init-startup)
(require 'init-elpa) ; init the elpa package config, did not announce any package
(require 'init-packages)

(require 'init-keymap)

(require 'init-ui)

;; maybe I don't need vim mode
;; (require 'init-evil)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load-file custom-file))
