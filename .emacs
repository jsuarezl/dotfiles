(global-display-line-numbers-mode 1) ;; enable line numbers by default

;; create saves folder
(let ((my-auto-save-dir (locate-user-emacs-file ".emacs-saves")))
  (setq auto-save-file-name-transforms
        `((".*" ,(expand-file-name "\\2" my-auto-save-dir) t)))
  (unless (file-exists-p my-auto-save-dir)
    (make-directory my-auto-save-dir)))
;; save backups to folder
(setq backup-by-copying t      ; backup with copy
      backup-directory-alist '(("." . "$HOME/.emacs-saves"))    ; backup to folder
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)       ; use versioned backups
(setq auto-save-file-name-transforms
      `((".*" "$HOME/.emacs-saves/" t)))

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
