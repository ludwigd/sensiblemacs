;; Inspired by Prelude
;; https://github.com/bbatsov/prelude/blob/master/core/prelude-packages.el

(require 'package)
(require 'cl)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(defvar sensiblemacs-packages
  '(ace-window
    auctex
    helm
    htmlize
    magit
    neotree
    doom-themes
    projectile
    helm-projectile)
  "A list of packages to ensure are installed at launch.")

(defun sensiblemacs-packages-installed-p ()
  "Check if all packages in `sensiblemacs-packages' are installed."
  (every #'package-installed-p sensiblemacs-packages))

(defun sensiblemacs-require-package (package)
  "Install PACKAGE unless already installed."
  (unless (memq package sensiblemacs-packages)
    (add-to-list 'sensiblemacs-packages package))
  (unless (package-installed-p package)
    (package-install package)))

(defun sensiblemacs-require-packages (packages)
  "Ensure PACKAGES are installed.
Missing packages are installed automatically."
  (mapc #'sensiblemacs-require-package packages))

(defun sensiblemacs-install-packages ()
  "Install all packages listed in `sensiblemacs-packages'."
  (unless (sensiblemacs-packages-installed-p)
    ;; check for new packages (package versions)
    (message "%s" "Emacs is now refreshing its package database...")
    (package-refresh-contents)
    (message "%s" " done.")
    ;; install the missing packages
    (sensiblemacs-require-packages sensiblemacs-packages)))

;; run package installation
(sensiblemacs-install-packages)
