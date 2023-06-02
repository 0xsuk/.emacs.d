; package for order-less filtering of completion candidates
(use-package orderless
	:config
	(setq 
	 completion-styles '(orderless)
	 completion-category-defaults nil ; important
	 completion-category-overrides '((file (styles basic partial-completion)))
	 orderless-matching-styles '(orderless-initialism orderless-literal)))
