(use-package typescript-mode
  :mode ("\\.ts\\'" "\\.tsx\\'") ;active typescript-mode for .ts
  :init
  :hook (typescript-mode . lsp-deferred) ; whenever typescript-mode is activated, call lsp-deferred
	:custom
	(typescript-indent-level 2)
																				;(setq-default js-inden)
	)
(use-package clojure-mode ; https://clojure-lsp.io/clients/#emacs
  )
(use-package cider
  :config
	)
(use-package go-mode
	:hook (go-mode . lsp-deferred))
(use-package lsp-java
	:hook (java-mode . lsp-deferred) ; important. otherwise when creating new file (.java), lsp will not be activated
	:config
	(setq lsp-java-format-on-type-enabled nil) ; default formatter (eclipse jdtls) forces tab width 4 during typing, so disable this
	)
(use-package sly
	:init
	(setq inferior-lisp-program "sbcl")
	:custom
	(sly-kill-without-query-p t)
	; TODO: what's this. does this conflict with orderless/prescient?
	(sly-complete-symbol-function 'sly-flex-completions)
	:config
	(general-def sly-mode-map
		;; "C-x C-e" nil ; sly eavl last exp
		"M-," nil ;'sly-pop-find-definition-stack
		"M-." nil ;'sly-edit-definition
		;; "M-:" 'sly-eval-last-expression
		"M-?" nil ;'sly-edit-uses
		"M-_" nil ;'sly-edit-uses
		"C-c C-j" 'sly-eval-defun
		"C-c C-p" 'sly-mrepl-previous-prompt
		"C-c C-n" 'sly-mrepl-next-prompt
		)
	(setq sly-mrepl-shortcut "")
	; TODO configure completion-at-point-functions??
	(defun my-sly-setup ()
		(interactive)
		(setq-local completion-styles '(basic partial-completion)) ; without basic, "slot-" does not match slot-value for example
		)
	(add-hook 'sly-mode-hook #'my-sly-setup 100)
	)
