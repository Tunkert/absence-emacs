;; start the initial frame maximized
(add-to-list 'initial-frame-alist '(fullscreen . maximized))

;; start every frame maximized
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; inhibit splash screen
(setq inhibit-splash-screen t)

;; disable menu on startup
(menu-bar-mode -1)

;; disable tools on startup
(tool-bar-mode -1)

;; disable scroll bar on startup
(toggle-scroll-bar -1)

;; line numbers
(global-display-line-numbers-mode t)

;; set fonts
(set-face-attribute 'default nil :font "JetbrainsMono-10" )

;; theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'jetbrains-darcula t)

;; melpa
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(doom-modeline dashboard)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; dashboard setup
(require 'dashboard)
(dashboard-setup-startup-hook)
(setq dashboard-banner-logo-title "Welcome to Emacs Dashboard")
(setq dashboard-center-content t)

;; doom modeline
(require 'doom-modeline)
(doom-modeline-mode 1)

;; doom-mode-line settings
(setq doom-modeline-enable-word-count t)
(setq doom-modeline-modal-icon t)
(setq doom-modeline-checker-simple-format t)
(display-time-mode t)
