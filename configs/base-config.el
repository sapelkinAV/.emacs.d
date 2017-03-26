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

;; winner-mode lets you use C-c <left> and C-c <right>
;; to switch between window configurations. This is handy when something has
;; popped up a buffer that you want to look at briefly before returning to whatever you were working on. When you're done, press C-c <left>.
(use-package winner
  :defer t)

;;tool bar
(tool-bar-mode -1)

;;smart indentation
(use-package smart-mode-line)

;;electric pair
(electric-pair-mode t)


(provide 'base-config)

