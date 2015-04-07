;; tab in C is 4 spaces
(setq-default c-basic-offset 4)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.

 ;;'(custom-theme-load-path "~/.emacs.d/themes")

 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


 ;; Add theme path
 ;;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
 ;;(load-theme 'solarized t)

 ;; no welcome screen
(setq inhibit-startup-message t)

 ;; Disable toolbar
(tool-bar-mode -1)

 ;; Set theme
(load-theme 'misterioso)

;; Init maximized
(toggle-frame-maximized)

 ;; Prolog
(autoload 'run-prolog "prolog" "Start a Prolog sub-process." t)
(autoload 'prolog-mode "prolog" "Major mode for editing Prolog programs." t)
(autoload 'mercury-mode "prolog" "Major mode for editing Mercury programs." t)
(setq prolog-system 'swi)
(setq auto-mode-alist (append '(("\\.pl$" . prolog-mode)
				("\\.m$" . mercury-mode))
			      auto-mode-alist))
