;; Org-mode


(use-package org
	:ensure nil
	:config
	(general-def org-mode-map
		"M-h" nil ; org-mark-element
		)
	)

(use-package org-noter
	:if (not ismac)
	:init
	(setq org-noter-always-create-frame nil)
	)

(use-package org-remark
	:if (not ismac))

