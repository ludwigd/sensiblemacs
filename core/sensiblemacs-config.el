;; Disable the startup screen
(setq inhibit-startup-screen t)

;; Make emcas shut up
(setq ring-bell-function 'ignore)

;; Make the titlebar display exactly the current buffer's name
(setq frame-title-format "%b")

;; Show relative line number everywhere
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode)

;; Make tabs four spaces wide
(setq-default default-tab-width 4)

;; Use spaces to indent
(setq-default indent-tab-mode nil)

;; Disable the scroll bars
(scroll-bar-mode -1)

;; Disable the tool bar
(tool-bar-mode -1)

;; Show current column in modeline
(column-number-mode)

;; Enable global helm mode
(helm-mode 1)

;; Enable auto-fill in all text modes
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; Set the theme if in GUI session
(if window-system (load-theme 'spacemacs-dark t)
  (setq frame-background-mode 'dark))
