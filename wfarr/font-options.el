(setq *wfarr-font-size* 16)
(setq *wfarr-default-font-size* 16)

(defun wfarr-set-font-size (points)
  "Set the font size to the given points."
  (setq *wfarr-font-size* points)
  (set-face-attribute 'default nil :height (* 10 *wfarr-font-size*)))

(defun wfarr-bigger-font ()
  "Make the current font a bit bigger."
  (interactive)
  (wfarr-set-font-size (+ *wfarr-font-size* 2)))

(defun wfarr-smaller-font ()
  "Make the current font a bit smaller."
  (interactive)
  (wfarr-set-font-size (- *wfarr-font-size* 2)))

(defun wfarr-standard-font ()
  "Set the standard font face."
  (interactive)
  (wfarr-set-font-size *wfarr-default-font-size*))

(wfarr-standard-font)
