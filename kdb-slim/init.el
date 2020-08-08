;; q-mode Setup
(add-to-list 'load-path "~/.emacs.d/q-mode/")
(autoload 'q-mode "q-mode")
(add-to-list 'auto-mode-alist '("\\.[kq]\\'" . q-mode))

(defun remove-ess-q-extn ()
 (when (assoc "\\.[qsS]\\'" auto-mode-alist)
  (setq auto-mode-alist
        (remassoc "\\.[qsS]\\'" auto-mode-alist))))
(add-hook 'ess-mode-hook 'remove-ess-q-extn)
(add-hook 'inferior-ess-mode-hook 'remove-ess-q-extn)