;; Emacs UI Settings

;; Turn Off Menu Tool Scroll bar
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
;; Inhibit Startup 
(setq inhibit-startup-message 1)
;; Frame Title
(setq frame-title-format "MacBook")
;; Scratch Message --- Happy hacking ...
(setq-default initial-scratch-message
              (concat ";; Happy hacking, " user-login-name " - Emacs ♥ you!\n\n"))
;; Highlight Current Line 
;;(global-hl-line-mode 1)
;; Highlight Parentheses
(show-paren-mode 1)
;; Line Config
(line-number-mode 1)
(column-number-mode 1)
(size-indication-mode 1)
(show-paren-mode 1)
;; Blinking Cursor Disable
(blink-cursor-mode -1)
;; Newline  @ end of file
(setq require-final-newline t)

;; Scrolling Config
(setq scroll-step 1
      scroll-margin 5
      scroll-conservatively 100000)
;; NO RING BELL
(setq ring-bell-function 'ignore)

;; Never Load Outdated Code
(setq load-prefer-newer t)
;; Keystrokes Fast
(setq echo-keystrokes 0.1)
;; Enable Y/n
(fset 'yes-or-no-p 'y-or-n-p)
;; 保持自定义设置 在一个分离文件 
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;; IDO MODE
(ido-mode 1)
;; Org Mode 自动换行
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))

(provide 'UI)
