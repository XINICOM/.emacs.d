;; -*- lexical-binding: t; -*-

(use-package vscode-dark-plus-theme
  :init (load-theme 'vscode-dark-plus t))
(custom-set-faces
 ;; 基础 8 色 (Normal)
 `(term-color-black   ((t (:foreground "#272B33" :background "#272B33"))))
 `(term-color-red     ((t (:foreground "#E06C75" :background "#E06C75"))))
 `(term-color-green   ((t (:foreground "#98C379" :background "#98C379"))))
 `(term-color-yellow  ((t (:foreground "#E5C07B" :background "#E5C07B"))))
 `(term-color-blue    ((t (:foreground "#61AFEF" :background "#61AFEF"))))
 `(term-color-magenta ((t (:foreground "#C678DD" :background "#C678DD"))))
 `(term-color-cyan    ((t (:foreground "#56B6C2" :background "#56B6C2"))))
 `(term-color-white   ((t (:foreground "#DCDFE4" :background "#DCDFE4"))))
 ;; ANSI 转义序列颜色映射 (用于 ansi-color 库和 comint 模式)
 `(ansi-color-black          ((t (:foreground "#272B33" :background "#272B33"))))
 `(ansi-color-red            ((t (:foreground "#E06C75" :background "#E06C75"))))
 `(ansi-color-green          ((t (:foreground "#98C379" :background "#98C379"))))
 `(ansi-color-yellow         ((t (:foreground "#E5C07B" :background "#E5C07B"))))
 `(ansi-color-blue           ((t (:foreground "#61AFEF" :background "#61AFEF"))))
 `(ansi-color-magenta        ((t (:foreground "#C678DD" :background "#C678DD"))))
 `(ansi-color-cyan           ((t (:foreground "#56B6C2" :background "#56B6C2"))))
 `(ansi-color-white          ((t (:foreground "#DCDFE4" :background "#DCDFE4"))))
 ;; 亮色 (Bright) - 在有些终端输出里会用到
 `(ansi-color-bright-black   ((t (:foreground "#6F7A8F" :background "#6F7A8F"))))
 `(ansi-color-bright-red     ((t (:foreground "#E06C75" :background "#E06C75"))))
 `(ansi-color-bright-green   ((t (:foreground "#98C379" :background "#98C379"))))
 `(ansi-color-bright-yellow  ((t (:foreground "#E5C07B" :background "#E5C07B"))))
 `(ansi-color-bright-blue    ((t (:foreground "#61AFEF" :background "#61AFEF"))))
 `(ansi-color-bright-magenta ((t (:foreground "#C678DD" :background "#C678DD"))))
 `(ansi-color-bright-cyan    ((t (:foreground "#56B6C2" :background "#56B6C2"))))
 `(ansi-color-bright-white   ((t (:foreground "#DCDFE4" :background "#DCDFE4")))))

;; 如果你是在 Emacs 里用 vterm 插件，还需要额外覆盖 vterm 的颜色：
;; (with-eval-after-load 'vterm
;;   (setq vterm-color-black   '("#272B33" "#272B33"))
;;   (setq vterm-color-red     '("#E06C75" "#E06C75"))
;;   (setq vterm-color-green   '("#98C379" "#98C379"))
;;   (setq vterm-color-yellow  '("#E5C07B" "#E5C07B"))
;;   (setq vterm-color-blue    '("#61AFEF" "#61AFEF"))
;;   (setq vterm-color-magenta '("#C678DD" "#C678DD"))
;;   (setq vterm-color-cyan    '("#56B6C2" "#56B6C2"))
;;   (setq vterm-color-white   '("#DCDFE4" "#DCDFE4")))


(toggle-frame-maximized)


;; font
;; origin: https://www.bilibili.com/video/BV13g4y167Zn/?p=25&share_source=copy_web&vd_source=ab502ecc8ee90738e4605c93bdb6a080
;; update: https://juejin.cn/post/7085254713595133960
;; for me just need "Microsoft YaHei Mono-14"
(set-face-attribute 'default nil :font "Consolas-26") ; combine "YaHei" and "Consolas"

(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode t)
(global-hl-line-mode t)

(provide 'init-ui)

;; (use-package smart-mode-line
;;   :init
;;   (setq sml/no-confirm-load-theme t
;; 	sml/theme 'respectful)
;;   (sml/setup))
