(add-to-list 'load-path "~/.emacs.d/core/")

(load "sensiblemacs-packages")		; Make sure all default packages are installed
(load "sensiblemacs-functions")		; Load additional functions
(load "sensiblemacs-keybindings")	; Set some default keybindings
(load "sensiblemacs-config")		; Load the default config

(let ((user-settings "~/.sensiblemacs"))
  (when (file-exists-p user-settings)
    (load-file user-settings)))


;; Emacs will add code below this line. Do not touch it!
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (htmlize spacemacs-theme neotree magit helm auctex ace-window))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
