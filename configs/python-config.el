(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(setq interpreter-mode-alist
      (cons '("python" . python-mode) interpreter-mode-alist))
(setq python-shell-interpreter "/usr/bin/python")
(defun python-mode-hook-setup ()
  (setq compile-command "python")
  (define-key python-mode-map (kbd "C-c C-c") 'compile)
  (use-package elpy)
  
  (unless (is-buffer-file-temp)
    ;; run command `pip install jedi flake8 importmagic` in shell,
    ;; or just check https://github.com/jorgenschaefer/elpy
    (if (fboundp 'elpy-enable) (elpy-enable) (elpy-mode 1))
    ;; http://emacs.stackexchange.com/questions/3322/python-auto-indent-problem/3338#3338
    ;; emacs 24.4 only
    (setq electric-indent-chars (delq ?: electric-indent-chars)))
  
  )

(add-hook 'python-mode-hook 'python-mode-hook-setup)

(provide 'python-config)
