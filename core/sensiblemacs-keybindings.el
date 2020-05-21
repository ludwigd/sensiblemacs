;; Access magit
(global-set-key (kbd "C-x g") 'magit-status)

;; Change window using ace
(global-set-key (kbd "C-x o") 'ace-window)

;; Kill the whole line, like `dd` in vi
(global-set-key (kbd "C-k") 'kill-whole-line)

;; Comment or uncomment the current line
(global-set-key (kbd "C-;") 'comment-line)

;; Comment or uncomment a region
(global-set-key (kbd "C-x C-;") 'comment-or-uncomment-region)

;; Open line below, like `o` in vi normal mode
(global-set-key (kbd "C-o") 'insert-line-below)

;; Open line above, like `O` in vi normal mode
(global-set-key (kbd "C-S-o") 'insert-line-above)

(defun sensiblemacs-enable-helm-keybindings ()
  "Set some keybindings for helm"
  (interactive "p")
  (global-set-key (kbd "M-x") 'helm-M-x)
  (global-set-key (kbd "C-x C-f") 'helm-find-files))





