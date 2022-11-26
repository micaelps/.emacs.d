(setq inhibit-startup-message t)
(tool-bar-mode -1)
(tooltip-mode -1)
(global-display-line-numbers-mode t)
(column-number-mode t)
(setq visible-bell t)
(delete-selection-mode t)
(global-visual-line-mode t)
(setq mouse-wheel-scroll-amount '(2((shift) . 1)))
(setq backup-directory-alist `(("." . "~/.saves")))

;;package config
(require 'package)
(setq package-enable-at-startup nil)

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


(use-package try
   :ensure t)

(use-package clojure-mode
   :ensure t)

(use-package lsp-mode
  :ensure t)

(use-package lsp-mode
  :ensure t
  :config
  (define-key lsp-mode-map (kbd "M-2") lsp-command-map))

(use-package lsp-treemacs
  :ensure t)

(use-package flycheck
  :ensure t)

(use-package company
  :ensure t)

(use-package cider
  :ensure t)

(use-package paredit
  :ensure t)

(use-package rainbow-delimiters
  :ensure t)

(use-package all-the-icons
  :ensure t)

(use-package neotree
  :ensure t)

(add-hook 'clojure-mode-hook 'lsp)
(add-hook 'clojurescript-mode-hook 'lsp)
(add-hook 'clojurec-mode-hook 'lsp)

(use-package which-key
  :ensure t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("171d1ae90e46978eb9c342be6658d937a83aaa45997b1d7af7657546cae5985b" "9b4ae6aa7581d529e20e5e503208316c5ef4c7005be49fdb06e5d07160b67adc" default))
 '(ispell-dictionary nil)
 '(package-selected-packages
   '(resize-window neotree lsp-java unicode-fonts atom-one-dark-theme fontawesome atom-dark-theme centaur-tabs paredit cider lsp-mode use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(use-package centaur-tabs
  :ensure t
  :demand
  :config
  (centaur-tabs-mode t)
  :bind
  ("C-<prior>" . centaur-tabs-backward)
  ("C-<next>" . centaur-tabs-forward))

(setq centaur-tabs-style "bar")
(setq centaur-tabs-height 32)
(setq centaur-tabs-set-icons t)
(centaur-tabs-change-fonts "Regular" 130)

(setq centaur-tabs-set-bar 'under)
;; Note: If you're not using Spacmeacs, in order for the underline to display
;; correctly you must add the following line:
(setq x-underline-at-descent-line t)
(set-face-attribute 'default nil :height 150)
(load-theme 'atom-one-dark t)

(use-package resize-window
  :ensure t)

(setq neo-theme (if (display-graphic-p) 'ascii))
;;(setq neo-window-width 40) 
(setq neo-window-fixed-size nil)

