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

(defun sensiblemacs-apply-config ()
  "Apply configuration options"
  (interactive "p")

  ;; Theme
  (if window-system
      (load-theme sensiblemacs-theme t))

  ;; Startup screen
  (if sensiblemacs-hide-startup-screen
      (setq inhibit-startup-screen t))

  ;; Bell
  (unless sensiblemacs-bell
    (setq ring-bell-function 'ignore))

  ;; Toolbar
  (unless sensiblemacs-show-toolbar
    (tool-bar-mode -1))

  ;; Scrollbars
  (unless sensiblemacs-show-scrollbar
    (scroll-bar-mode -1))

  ;; Columns
  (if sensiblemacs-show-columns
      (column-number-mode 1))

  ;; Frame title format
  (setq frame-title-format sensiblemacs-frame-title-format)

  ;; Indent mode
  (unless sensiblemacs-use-tabs
    (setq-default indent-tabs-mode nil))

  ;; Tab width
  (setq-default default-tab-width sensiblemacs-tab-width)

  ;; Line numbers
  (setq display-line-numbers-type sensiblemacs-line-numbers-type)
  (if sensiblemacs-line-numbers
      (global-display-line-numbers-mode))

  ;; Auto-Fill
  (if sensiblemacs-text-mode-auto-fill
      (add-hook 'text-mode-hook 'turn-on-auto-fill))

  ;; Helm
  (if sensiblemacs-use-helm
      (progn
        (helm-mode 1)
        (sensiblemacs-enable-helm-keybindings)))

  ;; Projectile
  (if sensiblemacs-use-projectile
      (progn
        (projectile-mode 1)
        (if sensiblemacs-use-helm
            (helm-projectile-on))
        (sensiblemacs-enable-projectile-keybindings)))
  
  )
