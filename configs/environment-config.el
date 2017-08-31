

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GROUP: Environment -> Initialization ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq
 inhibit-startup-screen t
 )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GROUP: Environment -> Minibuffer   ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (icomplete-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GROUP: Environment -> Minibuffer -> Savehist ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; savehist saves minibuffer history by defaults
(setq savehist-additional-variables '(search ring regexp-search-ring) ; also save your regexp search queries
      savehist-autosave-interval 60     ; save every minute
      )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GROUP: Environment -> Windows -> Winner ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(winner-mode 1)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GROUP: Environment -> Mode Line    ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(column-number-mode 1)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; PACKAGE: nyan-mode                    ;;
;;                                       ;;
;; GROUOP: Environment -> Frames -> Nyan ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; only turn on if a window system is available
;; this prevents error under terminal that does not support X

(use-package nyan-mode
  :init
  (case window-system
    ((x w32) (nyan-mode)))
  )

(use-package exec-path-from-shell
  :init
  (exec-path-from-shell-initialize)
    :config
    (exec-path-from-shell-initialize))

(defun source-file-and-get-envs (filename)
  (let* ((cmd (concat ". " filename "; env"))
         (env-str (shell-command-to-string cmd))
         (env-lines (split-string env-str "\n"))
         (envs (mapcar (lambda (s) (replace-regexp-in-string "=.*$" "" s)) env-lines)))
    (delete "" envs)))

(exec-path-from-shell-copy-envs (source-file-and-get-envs "~/.bash_profile")))


(add-hook 'after-init-hook '(exec-path-from-shell-copy-envs (source-file-and-get-envs "~/.bash_profile"))))
(add-hook 'eshell-mode-hook '((exec-path-from-shell-copy-envs (source-file-and-get-envs "~/.bash_profile"))
			      (setq shell-path-env (getenv "PATH"))
			      ))

(provide 'environment-config)
