(setq ruby-deep-indent-paren-style nil)

(add-hook 'ruby-mode-hook
          '(lambda ()
             (whitespace-mode)
             (auto-fill-mode -1)
             )
          )

(setenv "PATH" ("/opt/github/rbenv/shims:/opt/github/rbenv/bin:" (getenv "PATH")))
(setq exec-path (cons "/opt/github/rbenv/shims" (cons "/opt/github/rbenv/bin") exec-path))
