;; ---------------------
;; General configuration
;; ---------------------

;; Enable MELPA package repository
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)


;; Disable startup screen
(custom-set-variables
 '(inhibit-startup-screen t))
(custom-set-faces)

;; -----------------
;; Packages sections
;; -----------------

;; Enable Evil if it exist
(when (require 'evil nil t)
  (evil-mode 1))


;; -------------------
;; My own custom modes
;; -------------------

;; (VectorCast mode) Add and load custom file
(when (load ".emacs.d/vectorcast-mode.el" t)
  (setq vectorcast-mode-file "~/.emacs.d/vectorcast-mode.el")
  (load-file vectorcast-mode-file))

;; Add very basic syntax highlight (Generic Mode for Obscure Languages)
(require 'generic-x)

;; ----------------
;; General behavior
;; ---------------

;; Disable mouuse wheel acceleration
(setq mouse-wheel-progressive-speed nil)

;; Use spaces instead of tabs
;; TODO: Unless there is special project configuration
(setq-default indent-tabs-mode nil)

;; Set default Tab Width
(setq-default tab-width 2)

;; ----------------
;; Themes \ Colours
;; ---------------

;; Accept Inkpot theme as safe
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("4f01a90c3aa9963e956302f0203564f6fae32ed624bbfe416743ba63f22566a4" default))
 '(package-selected-packages '(evil inkpot-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Use  Inkpot theme as default one
(add-hook 'after-init-hook (lambda () (load-theme 'inkpot)))
