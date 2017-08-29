;;setup backup directory
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

;;backup stuff
(setq delete-old-versions -1)
(setq version-control t)
(setq vc-make-backup-files t)
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/auto-save-list/" t)))

;;history
(setq savehist-file "~/.emacs.d/savehist")
(savehist-mode 1)
(setq history-length t)
(setq history-delete-duplicates t)
(setq savehist-save-minibuffer-history 1)
(setq savehist-additional-variables
      '(kill-ring
        search-ring
        regexp-search-ring))


;;tool bar
(tool-bar-mode -1)

;;smart indentation
(use-package smart-mode-line)

;;electric pair
(electric-pair-mode t)



(provide 'base-config)
