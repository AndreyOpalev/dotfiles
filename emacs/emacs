;; ----- Manualy installed packages -----
;; evil - VIM mode
;; yasnippet - Yet Another Snippet extension. Used by "irony-mode" for  to provide post-completion expansion of function arguments.
;; irony - It is minor 'irony-mode' for autocompletion for C++ which uses libclang
;; company-irony - with company-irony you have an asynchronous completion backend that will not get in your way if the completion takes some time. It supports overloaded functions and if you have Yasnippet installed the function arguments are inserted as placeholders to fill-in
;; flycheck-iron - This package provides a flycheck checker for the C, C++ and Objective-C languages.

;; ---------------------
;; General configuration
;; ---------------------

;; Enable MELPA package repository

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)


;; Disable startup screen
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("bb74a01bb5fd37151299f560cdc6b015ed5947c2c573861d7ab223085c90bbf1" "4f01a90c3aa9963e956302f0203564f6fae32ed624bbfe416743ba63f22566a4" default)))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (flycheck-irony company-irony irony yasnippet evil inkpot-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

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



;; Use  Inkpot theme as default one
(add-hook 'after-init-hook (lambda () (load-theme 'inkpot)))

;; Add company-irony to your company backends.
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))

;; YASnippet configuration
;; (add-to-list 'load-path
;;              "~/path-to-yasnippet")
(require 'yasnippet)
(yas-global-mode 1)
;; Use yas-minor-mode on a per-buffer basis
;;
;; To use YASnippet as a non-global minor mode, don't call yas-global-mode;
;; instead call yas-reload-all to load the snippet tables and then call
;; yas-minor-mode from the hooks of major-modes where you want YASnippet
;; enabled.
;; (yas-reload-all) <- from the github, but there is no such function
;; (add-hook 'prog-mode-hook #'yas-minor-mode)

;; 'irony' configuration
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

;; 'flycheck-irony' configuration
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))
