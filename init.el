(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("tromey" . "http://tromey.com/elpa/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages
  '(
    starter-kit
    starter-kit-lisp
    starter-kit-ruby
    starter-kit-bindings
    puppet-mode
    clojure-mode
    feature-mode
    markdown-mode
    )
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("ca2d69f5dd853dbf6fbcf5d0f1759ec357fda19c481915431015417ec9c1fbd8" "935e766f12c5f320c360340c8d9bc1726be9f8eb01ddeab312895487e50e5835" "cfd71d55f448690641d6e8ca6438ab696bcaff3296905f95d91d4990166863d5" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(highlight ((t (:background "#66666" :foreground "#eeeecc")))))
