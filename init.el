;; -*- lexical-binding: t; -*-

(add-to-list 'load-path
	     (expand-file-name (concat user-emacs-directory "lisp")))

;; ;; 让 Compilation mode 使用 MSYS2 的 Bash
;; (setenv "MSYSTEM" "MINGW64")
;; (setq shell-file-name "D:/msys64/usr/bin/bash.exe")
;; (setq shell-command-switch "-lc")

(setq shell-file-name "D:/msys64/usr/bin/bash.exe")
(setq shell-command-switch "-c")
(setenv "PATH"
        (concat "D:/msys64/mingw64/bin;D:/msys64/usr/bin;"
                (getenv "PATH")))
(setenv "MSYSTEM" "MINGW64")
(setq compile-command "")


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
