(defun insert-line-below (arg)
  "Insert an empty line below the current line, move the cursor and indent."
  (interactive "p")
  (end-of-line)
  (open-line arg)
  (next-line 1)
  (indent-according-to-mode))

(defun insert-line-above (arg)
  "Insert an empty line above the current line, move the cursor and indent."
  (interactive "p")
  (beginning-of-line)
  (open-line arg)
  (indent-according-to-mode))
