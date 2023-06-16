; nala install emacs-mozc-bin

(use-package mozc
	:config
	; 日本語入力の設定
	(setq default-input-method "japanese-mozc")
	(prefer-coding-system 'utf-8)

	(let* ((fontset-name "myfonts") ; フォントセットの名前
				 (size 12) ; フォントサイズ [pt]
				 (asciifont "DejaVu Sans Mono") ; 英語等のフォント
				 (jpfont "Hiragino Maru Gothic ProN") ; 日本語のフォント
				 (fontset (create-fontset-from-ascii-font
									 (format "%s-%d:weight=normal:slant=normal" asciifont size)
									 nil
									 fontset-name)))
		(set-fontset-font
		 fontset
		 'japanese-jisx0208
		 (font-spec :family jpfont)
		 nil
		 'append)
		(add-to-list 'default-frame-alist `(font . ,fontset-name)))

	)
