;; (use-package shackle
	;; :config
	;; (setq shackle-default-rule
				;; '(:same t)))

(use-package popper
	:config
	(setq popper-reference-buffers
				'("\\*Messages\\*"
					"Output\\*$"
					eshell-mode
					"^\\*eshell.*\\*$"
					vterm-mode
					"^\\*vterm.*\\*$"
					shell-mode
					"^\\*shell.*\\*$"
					;; dired-mode
					help-mode
					helpful-mode
					sly-db-mode ; sly debug mode
					"^\\*sly-db.*"
					"\\*xref\\*"
					"\\*Backtrace\\*"
					"^\\*Embark Collect.*"
					compilation-mode
					"^\\*sly-description*\\*$"
					point-history-show-mode
					;; Man-mode
					"^EAF Music Player$"
					))
	(setq popper-window-height 0.40)
	(popper-mode 1)
	)
