
(use-package auto-complete
  :config
  (ac-config-default)
  )
(use-package chicken-scheme
  :config
(add-hook 'scheme-mode-hook 'enable-paredit-mode)
(add-hook 'scheme-mode-hook 'rainbow-delimiters-mode-enable)
)

(provide 'programming-config)
