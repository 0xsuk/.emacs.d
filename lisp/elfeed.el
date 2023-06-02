(use-package elfeed
	:config
	(setq elfeed-db-directory (expand-file-name "elfeed" user-emacs-directory)
				;; elfeed-show-entry-switch 'display-buffer
				)
	)

(use-package elfeed-org
	:after elfeed
	:config
	(elfeed-org)
	(setq rmh-elfeed-org-files (mapcar (lambda (file) (expand-file-name file elfeed-db-directory)) '("tweets.org" "news.org")))

	)
