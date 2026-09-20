;; -*- lexical-binding: t; -*-

;; compile mode
(setq shell-file-name "D:/msys64/usr/bin/bash.exe")
(setq shell-command-switch "-c")
(setenv "PATH"
        (concat "D:/msys64/mingw64/bin;D:/msys64/usr/bin;"
                (getenv "PATH")))
(setenv "MSYSTEM" "MINGW64")
(setq compile-command "")


(provide 'init-shell)
