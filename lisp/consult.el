(use-package consult
	:config
	(consult-customize consult-recent-file consult-buffer consult-ripgrep :preview-key "C-l")
	)

(use-package consult-dir
	
	)

(defun consult-dir--fasd-dirs ()
	(mapcar (lambda (str) (concat str "/")) (split-string (shell-command-to-string "fasd -ld") "\n" t)))

(defvar consult-dir--source-fasd
 `(:name     "Fasd dirs"
   :narrow   ?f
   :category file
   :face     consult-file
   :history  file-name-history
   :enabled  ,(lambda () (executable-find "fasd"))
   :items    ,#'consult-dir--fasd-dirs)
  "Fasd directory source for `consult-dir'.")

(add-to-list 'consult-dir-sources 'consult-dir--source-fasd t)
