(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")
			 ("elpy" . "https://jorgenschaefer.github.io/packages/")))
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/use-package/")
(add-to-list 'load-path  "~/.emacs.d/configs/")

(require 'use-package-config)

;;My configuration
(require 'helm-configuration)
(require 'my-aliaces)
(require 'base-config)
(require 'faces-config)
(require 'editing-config)
(require 'convinience-config)
(require 'development-config)
(require 'files-config)
(require 'programming-config)
(require 'python-config)
;;global unsets
(global-unset-key (kbd "C-z"))





(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (py-autopep8 elpy linum+ flycheck diff-hl vlf-integrate vlf ztree recentf-ext dired+ dired-x projectile expand-region yasnippet undo-tree clean-aindent-mode smartparens volatile-highlights duplicate-thing workgroups2 spacemacs-theme color-theme company my-aliaces helm-config magit))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
