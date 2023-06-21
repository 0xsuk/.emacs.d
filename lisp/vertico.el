(use-package vertico
  :config
	(general-def vertico-map
		;; "<backspace>" 'my-vertico-backward
		;; (defun my-embark-insert (strings)
			;; (interactive)
			;; (if (eq major-mode 'vterm-mode)
					;; (vterm-send-string strings)
				;; (embark-insert strings))
			;; )
		;; "C-i" 'my-embark-insert
		;; "C-j" 'vertico-next
		;; "C-k" 'vertico-previous
		"C-n" 'vertico-next
		"C-p" 'vertico-previous
		"C-S-n" 'vertico-next-group
		"C-S-p" 'vertico-previous-group
		;; "C-n" 'vertico-next-group
		;; "C-p" 'vertico-previous-group
		"C-u C-p" 'vertico-last
		"C-u C-n" 'vertico-first
		)
  (vertico-mode))

(use-package savehist
	:init
	(savehist-mode))

(setq enable-recursive-minibuffers t)

