;; $ Load PATH

(package-initialize)

(add-to-list 'load-path (expand-file-name
			 "Settings" user-emacs-directory))
(add-to-list 'load-path (expand-file-name
			 "PACKAGE" user-emacs-directory))
;; C-x C-f 默认路径
(setq default-directory "C:/Users/big0r/DEV")

;; MY Linux && Terminal 

(require 'UI)
(require 'theme)
(require 'font)
(require 'kbd)
(require 'backup)
(require 'REPO)

;; PACKAGES

(require 'init-NeoTree)
(require 'init-Web-Mode)
(require 'init-Company)
(require 'init-Smex)
(require 'init-nyan-mode)

(provide 'init)
