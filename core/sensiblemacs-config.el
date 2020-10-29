(defcustom sensiblemacs-use-projectile t
  "Non-nil will enable projectile"
  :type 'boolean
  :group 'sensiblemacs)

(defcustom sensiblemacs-use-helm t
  "Non-nil will enable helm"
  :type 'boolean
  :group 'sensiblemacs)

(defcustom sensiblemacs-text-mode-auto-fill t
  "Enables or disables auto-fill in text modes"
  :type 'boolean
  :group 'sensiblemacs) 

(defcustom sensiblemacs-line-numbers-type 'relative
  "Type of line numbers"
  :type '(choice (const :tag "Relative line numbers" relative)
                 (const :tag "Relative visual line numbers" visual)
                 (other :tag "Absolute line numbers" t))
  :group 'sensiblemacs)

(defcustom sensiblemacs-line-numbers t
  "Display line numbers"
  :type 'boolean
  :group 'sensiblemacs)

(defcustom sensiblemacs-hide-startup-screen t
  "Non-nil means the GNU startup screen is hidden."
  :type 'boolean
  :group 'sensiblemacs)

(defcustom sensiblemacs-bell nil
  "If nil, the bell is disabled."
  :type 'boolean
  :group 'sensiblemacs)

(defcustom sensiblemacs-theme 'doom-monokai-pro
  "The theme to load as default."
  :type 'string
  :group 'sensiblemacs)

(defcustom sensiblemacs-show-toolbar nil
  "Non-nil will show the toolbar."
  :type 'boolean
  :group 'sensiblemacs)

(defcustom sensiblemacs-show-scrollbar nil
  "No-nil will show scrollbars."
  :type 'boolean
  :group 'sensiblemacs)

(defcustom sensiblemacs-show-columns t
  "Non-nil will display the current column."
  :type 'boolean
  :group 'sensiblemacs)

(defcustom sensiblemacs-frame-title-format "%b"
  "What is in the title bar."
  :type '(string)
  :group 'sensiblemacs)

(defcustom sensiblemacs-use-tabs nil
  "Non-nil will indent using tabs instead of spaces."
  :type 'boolean
  :group 'sensiblemacs)

(defcustom sensiblemacs-tab-width 4
  "Default tab width"
  :type 'integer
  :group 'sensiblemacs)
