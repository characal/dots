(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(setq custom-file "~/.emacs.d/custom-file.el")

(load-file custom-file)

(require 'package)
(package-initialize)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)

;; (load-file "~/.emacs.d/themes/assemblage-theme.el")
(add-to-list 'custom-theme-load-path "/home/zi/.emacs.d/themes/")
(load-theme 'fogus t)

;; Use company mode everywhere.
(global-company-mode t)

;; Navigate in completion minibuffer with `C-n` and `C-p`.
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)

(add-to-list 'company-backends 'company-c-headers)

;; Provide instant autocompletion.
(setq company-idle-delay 0.0)

;; Mode stuff
(mode-line-bell-mode)
(global-display-line-numbers-mode)

;; Disable Backups (they muck shit up)
(setq make-backup-files nil)
(setq auto-save-default nil)

;; Font
(add-to-list 'default-frame-alist '(font . "Hack-11"))
(set-face-attribute 'mode-line nil :height 115)
(set-face-attribute 'default nil :height 115)

(rainbow-delimiters-mode)

(setq-default truncate-lines t)
(setq-default tab-width 4)

(setq frame-resize-pixelwise t)

;; Scrolling
(setq-default pixel-scroll-mode 1)

(recentf-mode 1)
(setq recentf-max-menu-items 25)
(setq recentf-max-saved-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(use-package dired-sidebar
  :ensure t
  :commands (dired-sidebar-toggle-sidebar))

(add-to-list 'load-path "path from pwd")
(require 'dired-sidebar)

(require 'dashboard)
(setq dashboard-startup-banner "~/.emacs.d/emacs-logo.png")
(dashboard-setup-startup-hook)
(setq initial-buffer-choice (lambda () (get-buffer "*dashboard*")))
