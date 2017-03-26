(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))

(use-package elpy
  :mode "\\.py\\'"
  :init
  (add-hook 'python-mode-hook (lambda ()
                                (elpy-enable)
                                )))

(use-package py-autopep8
  :mode "\\.py\\'"
  :init
  (require 'py-autopep8)
  (add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)
)




(provide 'python-config)
