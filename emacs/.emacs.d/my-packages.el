(provide 'my-packages)

;; There goes list of all packages i want to get installed
(setq my-bundle
      '(powerline
	speedbar
	auto-complete
	yasnippet
	elpy
	scala-mode2
	markdown-mode))

(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)


(defun install-my-bundle-packages ()
  "Install only the sweetest of packages."
  (interactive)
  (package-refresh-contents)
  (mapc '(lambda (package)
           (unless (package-installed-p package)
             (package-install package)))
        my-bundle))