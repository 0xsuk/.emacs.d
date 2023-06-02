(defun my-load-file (filename)
	(load (concat user-emacs-directory "lisp/" filename)))
(my-load-file "utils.el")
(my-load-file "basic.el")
(my-load-file "bindings.el")
(my-load-file "cosmetics.el")
(my-load-file "etc.el")
(my-load-file "vertico.el")
(my-load-file "marginalia.el")
(my-load-file "consult.el")
(my-load-file "embark.el")
(my-load-file "meow.el")

(my-load-file "corfu.el")
(my-load-file "prescient.el")
(use-package sly
	:init
	(setq inferior-lisp-program "sbcl"
				sly-complete-symbol-function 'sly-simple-completions)
	(setq sly-symbol-completion-mode nil) ;;??
	(defun test ()
		"just testing")
	(add-hook 'sly-symbol-completion-mode-hook #'test)
	)
