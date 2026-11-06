;; -*- lexical-binding: t; -*-

;; compile mode
;; (setq shell-file-name "D:/msys64/usr/bin/bash.exe")
;; (setq shell-command-switch "-c")
;; (setenv "PATH"
;;         (concat "D:/msys64/mingw64/bin;D:/msys64/usr/bin;"
;;                 (getenv "PATH")))
;; (setenv "MSYSTEM" "MINGW64")
;; (setq compile-command "")

;;; 虽然使用 pwsh 但是安装环境还是推荐使用 MSYS2，更加方便
(setq shell-file-name "C:/Users/XINIC/AppData/Local/Microsoft/WindowsApps/Microsoft.PowerShell_8wekyb3d8bbwe/pwsh.exe")


(provide 'init-shell)
