;; COMPANY MODE

(add-hook 'after-init-hook 'global-company-mode)

(setq company-idle-delay 0.5)
(setq company-tooltip-limit 10)
(setq company-minimum-prefix-length 2)

(provide 'init-Company)
