(define-key input-decode-map "\C-i" [C-i]) ; https://emacs.stackexchange.com/questions/17509/how-to-distinguish-c-i-from-tab
(define-key input-decode-map [?\C-\[] (kbd "<C-[>")) ; https://emacs.stackexchange.com/questions/10271/how-to-bind-c-for-real-seriously-for-real-this-time

(use-package general
  :config
	(general-override-mode)
	)

(general-def 'global
	";" (my-l (end-of-line) (self-insert-command 1 ?\;))
	"j"
	(general-key-dispatch 'self-insert-command
			:timeout 0.35
			"f" (my-l (insert "`"))
			"w" (my-l (insert "'"))
			"k" (my-l (insert "()") (backward-char))
			"s" (my-l (insert "\"\"") (backward-char))
			"p" (my-l (insert "&")) ; pointer
			"v" (my-l (insert "*"))
			"q" (my-l (insert "<<")) ; false!
			"d" (my-l (insert "_"))
			"l" 'my-insert-curly-brackets-at-end
			"j" 'my-insert-dot
			"r" (my-l (insert "#"))
			";" (my-l (insert ";"))
			)
	;; "/" (general-key-dispatch 'self-insert-command
				;; "a" (my-l (self-insert-command 1 ?A))
				;; "b" (my-l (self-insert-command 1 ?B))
				;; "c" (my-l (self-insert-command 1 ?C))
				;; "d" (my-l (self-insert-command 1 ?D))
				;; "e" (my-l (self-insert-command 1 ?E))
				;; "f" (my-l (self-insert-command 1 ?F))
				;; "g" (my-l (self-insert-command 1 ?G))
				;; "h" (my-l (self-insert-command 1 ?H))
				;; "i" (my-l (self-insert-command 1 ?I))
				;; "j" (my-l (self-insert-command 1 ?J))
				;; "k" (my-l (self-insert-command 1 ?K))
				;; "l" (my-l (self-insert-command 1 ?L))
				;; "m" (my-l (self-insert-command 1 ?M))
				;; "n" (my-l (self-insert-command 1 ?N))
				;; "o" (my-l (self-insert-command 1 ?O))
				;; "p" (my-l (self-insert-command 1 ?P))
				;; "q" (my-l (self-insert-command 1 ?Q))
				;; "r" (my-l (self-insert-command 1 ?R))
				;; "s" (my-l (self-insert-command 1 ?S))
				;; "t" (my-l (self-insert-command 1 ?T))
				;; "u" (my-l (self-insert-command 1 ?U))
				;; "v" (my-l (self-insert-command 1 ?V))
				;; "w" (my-l (self-insert-command 1 ?W))
				;; "x" (my-l (self-insert-command 1 ?X))
				;; "y" (my-l (self-insert-command 1 ?Y))
				;; "z" (my-l (self-insert-command 1 ?Z))
				;; "/" (my-l (self-insert-command 1 ?/)))
	"C-j" 'default-indent-new-line
	"C-k" 'crux-kill-and-join-forward
	"C-x w" 'elfeed
	"C-x C-t" (my-l (message (file-name-directory buffer-file-name))) ;before: transpose-line
	"C-x j" 'purpose-switch-buffer ; bef:quit-window
	"C-x C-r" 'eval-region ; bef:find-file-read-only
	;; "C-x C-d" 'consult-dir ; bef:dired
	;; "C-x d" 'dired ; list-directory
	"M-u" 'mark-sexp ; bef:upcase-word
	"C-/" 'winner-undo
	"C-\\" 'winner-redo ; toggle-input-method not freq
	"M-;" 'comment-line ; better than comment-dwim
	;; "M-:" 'eval-expression ;bef:eval-expression
	;; "C-x C-e" 'eval-last-sexp ; bef:eval-last-sexp
	"C-z" 'async-shell-command ; suspend-frame, useless
	"M--" 'point-history-show ; negative arg, use C--
	"C-;" 'find-file; undefined
	;; "M-@" 'er/mark-word
	"M-e" 'er/expand-region ;bef: forward-sentence
	"M-r" 'er/contract-region ; undefined
	"M-RET" 'crux-smart-open-line ; undefined
	"M-o" 'crux-smart-open-line-above; undefined
	"<C-i>" 'consult-imenu ; indent-for-tab-command, use TAB instead
	"M-i" 'paredit-forward-slurp-sexp ; tab-to-tab-stop
	"TAB" 'indent-for-tab-command ; has to be re-bound because of C-i
	"C-q" 'pop-to-mark-command ;quoted-insert, not used freq
	"M-l" 'windmove-right ; downcase word
	"M-h" 'windmove-left ; mark-paragraph
	"M-j" 'windmove-down ; default-indent-new-line
	"M-k" 'windmove-up ;kill-sentence
	"M-q" 'kill-current-buffer ; bef:kill-paragraph
	;; "M-y" 'counsel-yank-pop
	;; "M-s" 'swiper ; bef : some prefix
	"M-s" 'consult-line
	"M-[" 'backward-sexp ; undefined
	"M-]" 'forward-sexp ; undefined
	"<C-[>" 'undo-tree-undo ; undefined
	"C-]" 'undo-tree-redo ; abort-recursive-edit ?? dunno what
	"M-0" nil
	;;; free keys
	;; "C-x C-j"  ; use C-j
	;; "C-." 'counsel-switch-buffer


	"C-," 'consult-dir ; TODO do this in consult-buffer
	"C-." 'consult-buffer
	"C-x C-o" 'delete-other-windows ; delete-blank-lines
	"C-x C-f" 'projectile-find-file ; find-file use C-;
	"C-x C-;" 'eval-defun ; bef: comment-line use M-; instead
	"C-x C-u" nil ; bef:upcase-region, use M-u
	"C-x d" 'paredit-splice-sexp ; dired use dired-jump instead
	"C-x i" nil ; insert-file (inserts content of file)
	"C-x C-SPC" nil ; pop-global-mark ; same as C-x C-@
	"C-x C-n" 'my-max-popper-window ; set-goal-column no use probably
	;; "C-x o" nil ; other-window useless ; save in case M-<> overriden
	"M-g c" nil ; bef:goto-char useless
	"M-g M-g" nil ; bef:goto-line same as M-g g
	"M-g M-n" nil ; bef:next-error same as M-g n
	"M-g M-p" nil ; bef:prev-error same as M-g p
	;; "M-z" nil ;bef:zap-to-char, better use meow
	"M-c" 'upcase-region ;bef:capitalize-word useless (because it affect only the first letter)
	"M-t" nil ; bef:transpose-word
	;;	"M-v" nil; scroll-down-command useless
	"M-a" nil ; bef: backward-sentence
	"M-p" 'backward-sexp
	"M-n" 'forward-sexp ; undefined
	"C-t" nil ;transpose-chars useless
	;; "C-<return>" nil ; undefined
	"C-@" 'popper-toggle-latest
	"C-:" 'cape-dabbrev; undefined
	"C-^" 'my-max-popper-window ; undefined~~^^^^^^^^^
	"C-M--" nil ;	use C--
	;;; new prefixes candidates
	"M-SPC" 'set-mark-command ; bef:just-one-space same as C-SPC though
	"C-<escape>" nil; undefined
	"M-ESC" nil ; no usecase
	;;;
	;; "C-S-b" 'backward-sexp
	;; "C-S-n" 'forward-list
	;; "C-S-p" 'backward-list
	;; "C-S-f" 'forward-sexp ; not working!!!
	)

(general-create-definer leader-spc
	:prefix "<f12>")
(leader-spc
	:keymaps 'global
	"p" 'popper-mode
	"c" 'centered-window-mode
	"i" (my-l (find-file "~/.emacs.d/init.el"))
	"bs" (my-l (switch-to-buffer "*scratch*"))
	"bm" (my-l (switch-to-buffer "*Messages*"))
	"v" 'vterm
	"r" 'consult-ripgrep
	"j" 'my-split-and-move-down
	"l" 'my-split-and-move-right
	"dc" (my-l (cd (file-name-directory buffer-file-name)))
	"dd" (my-l (cd default-directory))
	"o" 'ace-window
	"m" 'imenu-anywhere
	"e" 'my-eshell-or-projectile-eshell
	"g" 'toggle-input-method
	)
