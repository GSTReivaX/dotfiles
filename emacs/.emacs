(require 'package)

(setq package-archives
      '(("gnu"   . "https://elpa.gnu.org/packages/")
        ("melpa" . "https://melpa.org/packages/")))
(setq use-package-always-ensure t)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile (require 'use-package))
(package-initialize)
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(global-display-line-numbers-mode)
(set-face-attribute 'default nil :font "JetBrainsMono Nerd Font Mono-10")
(ido-mode 1)
(ido-everywhere 1)
(fido-mode 1)
(global-set-key (kbd "<f5>") 'compile)
(global-set-key (kbd "<C-tab>") 'other-window)
(which-key-mode)
(which-key-setup-side-window-bottom)
(setq compilation-scroll-output t)


(global-flycheck-mode +1)
;;(use-package flycheck-inline
;;  :hook (flycheck-mode . flycheck-inline-mode))
;; :hook (lsp-mode.lsp-ui-mode)
;;(use-package lsp-ui
;;  :ensure t
;;  :config
;;(setq
;;	lsp-diagnostics-provider :flycheck
;;	lsp-ui-sideline-enable t
;;        lsp-ui-sideline-show-diagnostics t
;;        lsp-ui-sideline-show-hover t
;;        lsp-ui-sideline-show-code-actions t
;;        lsp-ui-sideline-update-mode 'line
;;        lsp-ui-sideline-delay 0.5
;;        lsp-ui-sideline-diagnostic-max-lines 3))
(use-package lsp-ui
  :ensure t
  :after lsp-mode
  :config
  ;; Enable the sideline feature
  (setq lsp-ui-sideline-enable t)

  ;; Ensure diagnostics (flycheck errors) are shown in the sideline
  (setq lsp-ui-sideline-show-diagnostics t)

  ;; Optionally, hide other elements if you only want diagnostics
  (setq lsp-ui-sideline-show-hover nil)        ; Hide hover symbols
  (setq lsp-ui-sideline-show-code-actions nil) ; Hide code actions

  ;; Hook lsp-ui-mode to run when lsp-mode starts
  :hook (lsp-mode . lsp-ui-mode))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auth-source-save-behavior nil)
 '(custom-enabled-themes '(gruber-darker))
 '(custom-safe-themes
   '("e13beeb34b932f309fb2c360a04a460821ca99fe58f69e65557d6c1b10ba18c7"
     default))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   '(erc flycheck flycheck-inline gruber-darker-theme kdl-mode lsp-mode
	 lsp-ui magit multiple-cursors smex use-package which-key)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'evil)
(evil-mode 1)
