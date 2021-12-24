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

(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")))
(when (< emacs-major-version 27)
  (package-initialize))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (yaml-mode nginx-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )