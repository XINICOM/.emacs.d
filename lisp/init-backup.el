;; -*- lexical-binding: t; -*-

(setq backup-directory-alist
      '(("." . "~/.emacs.d/backups")))
(setq version-control t)          ; 保留多个版本
(setq kept-new-versions 5)        ; 保留最新的 5 个
(setq kept-old-versions 2)        ; 保留最旧的 2 个
(setq delete-old-versions t)      ; 超出数量自动删除


(provide 'init-backup)
