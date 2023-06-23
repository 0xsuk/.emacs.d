; !!this should be called before theme load
(use-package centered-window
	:config
	(centered-window-mode))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode)) ; for any *prog*ramming language mode

;; (use-package dimmer
	;; :config
	;; (setq dimmer-percent 0.4)
	;; (dimmer-mode))

;; (use-package gruber-darker-theme
	;; :config
	;; (load-theme 'gruber-darker))

;; (use-package doom-themes
  ;; :config
  ;; (load-theme 'doom-acario-dark)
	;; (setq ring-bell-function 'doom-themes-visual-bell-fn) ; beep!
  ;; )

(use-package nyan-mode
	:config
	(nyan-mode)
	(setq nyan-animate-nyancat t
				nyan-bar-length 16)
)

(use-package ef-themes
	:config
	(load-theme (if islaptop 'ef-frost 'ef-winter))
	(setq ef-themes-to-toggle '(ef-frost ef-winter))
	)
;; (use-package twilight-anti-bright-theme
;; 	:config
;; 	(load-theme 'twilight-anti-bright)
;; 	)



; workspace
;; (use-package perspective
	;; :init
	;; (persp-mode))

;; (use-package tao-theme
;; 	:init
;; 	(setq tao-theme-use-sepia nil) ; use black yin
;; 	(setq tao-theme-use-boxes nil) ; does not mark function in box
;; 	(load-theme 'tao-yin)
;; 	)
