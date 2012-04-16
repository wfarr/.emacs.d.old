(defun make-auto (pattern mode)
  "Add a pattern to the auto-mode alist."
  (let ((ans (assoc pattern auto-mode-alist)))
    (if (and ans (equal mode (cdr ans)))
	(print "Do Nothing")
      (print "Added")
      (setq auto-mode-alist
	    (cons (cons pattern mode) auto-mode-alist)))))


(make-auto "\\.clj$"                        'clojure-mode)
(make-auto "\\.pp$"                         'puppet-mode)
(make-auto "\\.feature$"                    'feature-mode)
(make-auto "\\.\\(md\\|mkdn\\|markdown\\)$" 'markdown-mode)
