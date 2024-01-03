(tool-bar-mode 0)
(menu-bar-mode 0)
(setq inhibit-startup-message t)
(scroll-bar-mode 0)

(set-face-attribute 'default nil
		  :family "Caskaydia Cove Nerd Font"
                  :height 130)

(global-display-line-numbers-mode)
(setq display-line-numbers-type 'relative)
(setq use-package-always-ensure t)
(setq scroll-margin 8)
(setq make-backup-files nil)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(require 'org-tempo)

(use-package org-bullets
:ensure t
:config (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

(use-package evil
  :ensure t
  :init
  (setq evil-want-integration t) ;; This is optional since it's already set to t by default.
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1))

(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))

(use-package doom-themes
:ensure t
:init (load-theme 'doom-tokyo-night 't))

(use-package nerd-icons)

(use-package nerd-icons-dired
  :hook
  (dired-mode . nerd-icons-dired-mode))

(use-package nerd-icons-completion
:after marginalia
:config
(nerd-icons-completion-mode)
(add-hook 'marginalia-mode-hook #'nerd-icons-completion-marginalia-setup))

(use-package marginalia
  :bind (:map minibuffer-local-map
         ("M-A" . marginalia-cycle))
  :init
  (marginalia-mode))

(use-package vertico
:init (vertico-mode))

(use-package doom-modeline
  :init (doom-modeline-mode)
  :config (setq doom-modeline-height 50))

(use-package python
:hook (python-ts-mode . lsp-deferred)
:mode ("\\.py\\'" . python-ts-mode))
(use-package lsp-pyright
:ensure t
:hook (python-mode . (lambda ()
			(require 'lsp-pyright)
			(lsp-deferred))))

(use-package company
  :config (add-hook 'after-init-hook 'global-company-mode)
           (setq company-idle-delay 0.0))
(use-package company-box
  :hook (company-mode . company-box-mode))

(use-package orderless
  :ensure t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion)))))

(use-package lsp-mode
 :commands (lsp lsp-deferred))
(use-package lsp-ui
 :hook (lsp-mode . lsp-ui-mode)
 :config (setq lsp-ui-sideline-show-diagnostics t)
	 (setq lsp-ui-sideline-show-hover t))

(use-package general)

(evil-define-key 'normal dired-mode-map
  (kbd "M-RET") 'dired-display-file
  (kbd "h") 'dired-up-directory
  (kbd "l") 'dired-open-file ; use dired-find-file instead of dired-open.
  (kbd "m") 'dired-mark
  (kbd "t") 'dired-toggle-marks
  (kbd "u") 'dired-unmark
  (kbd "C") 'dired-do-copy
  (kbd "D") 'dired-do-delete
  (kbd "J") 'dired-goto-file
  (kbd "M") 'dired-do-chmod
  (kbd "O") 'dired-do-chown
  (kbd "P") 'dired-do-print
  (kbd "R") 'dired-do-rename
  (kbd "T") 'dired-do-touch
  (kbd "Y") 'dired-copy-filenamecopy-filename-as-kill ; copies filename to kill ring.
  (kbd "Z") 'dired-do-compress
  (kbd "+") 'dired-create-directory
  (kbd "-") 'dired-do-kill-lines
  (kbd "% l") 'dired-downcase
  (kbd "% m") 'dired-mark-files-regexp
  (kbd "% u") 'dired-upcase
  (kbd "* %") 'dired-mark-files-regexp
  (kbd "* .") 'dired-mark-extension
  (kbd "* /") 'dired-mark-directories
  (kbd "; d") 'epa-dired-do-decrypt
  (kbd "; e") 'epa-dired-do-encrypt)

(general-define-key
:states 'normal
:prefix "SPC"
"f f" 'find-file
"f b" 'switch-to-buffer
"b p" 'previous-buffer
"b n" 'next-buffer)
(general-define-key
"C-x C-b" 'ibuffer)

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-banner-logo-title "Welcome to my Emacs Society")
  (setq dashboard-startup-banner "~/.config/emacs/ltg-low-tier-god.gif")
  (setq dashboard-center-content t)
  (setq dashboard-items '((recents  . 5)
			  (projects . 5)
			  ))
  (setq dashboard-footer-messages '("We Ohio. Gyatt. Rizz"))
  (setq dashboard-set-heading-icons t
	dashboard-set-file-icons t)
  (setq dashboard-icon-type 'nerd-icons)
  (dashboard-modify-heading-icons '((recents . "nf-oct-history")
				(projects . "nf-oct-rocket"))))

(use-package projectile)

(use-package vterm)
