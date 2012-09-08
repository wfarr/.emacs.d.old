;; empty for meow

(add-to-list 'load-path "vendor/mustache-mode")

(require 'mustache-mode)

(remove-hook 'prog-mode-hook 'esk-turn-on-hl-line-mode)
