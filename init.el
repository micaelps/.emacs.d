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

(use-package paredit
  :ensure t)

(use-package rainbow-delimiters
  :ensure t)

(use-package all-the-icons
  :ensure t)

(use-package neotree
  :ensure t
  :config
  (progn (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))
  :bind ("M-1" . 'neotree-toggle))

(add-hook 'clojure-mode-hook 'lsp)
(add-hook 'clojurescript-mode-hook 'lsp)
(add-hook 'clojurec-mode-hook 'lsp)

(setq neo-window-width 40)

(setq gc-cons-threshold (* 100 1024 1024)
      read-process-output-max (* 1024 1024)
      treemacs-space-between-root-nodes nil
      company-minimum-prefix-length 1
      ; lsp-enable-indentation nil ; uncomment to use cider indentation instead of lsp
      ; lsp-enable-completion-at-point nil ; uncomment to use cider completion instead of lsp
      )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(paredit cider lsp-mode use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



