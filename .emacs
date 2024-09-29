(global-display-line-numbers-mode 1) ;; enable line numbers by default

;; create saves folder
(let ((my-auto-save-dir (locate-user-emacs-file ".emacs-saves")))
  (setq auto-save-file-name-transforms
        `((".*" ,(expand-file-name "\\2" my-auto-save-dir) t)))
  (unless (file-exists-p my-auto-save-dir)
    (make-directory my-auto-save-dir)))
;; save backups to folder
(setq backup-by-copying t      ; backup with copy
      backup-directory-alist '(("." . "~/.emacs-saves"))    ; backup to folder
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)       ; use versioned backups
(setq auto-save-file-name-transforms
      `((".*" "~/.emacs-saves/" t)))

(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")      ; fix melpa

(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")))

;; list of packages
(setq package-list
      '(dracula-theme yaml-mode nginx-mode highlight-indentation))

;; activate all the packages
(package-initialize)

;; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

;; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;; load dracula theme
(load-theme 'dracula t)
