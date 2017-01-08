;; English Font 
(if (display-graphic-p)
(set-face-attribute
 'default nil :font "Consolas 13"))
;; Chinese Font 默认中文字体卡顿
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset
                    (font-spec :family "微软雅黑" :size 16)))

(provide 'font)
