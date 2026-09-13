;; -*- lexical-binding: t; -*-

;; system-type (platform)
(defconst *is-macos* (eq system-type 'darwin))
(defconst *is-linux* (eq system-type 'gnu/linux))
(defconst *is-windows* (or (eq system-type 'ms-dos) (eq system-type 'windows-nt)))


(provide 'init-const)
