;; tab in C is 4 spaces
(setq-default c-basic-offset 4)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.

 ;;'(custom-theme-load-path "~/.emacs.d/themes")

 ;; no welcome screen
 '(inhibit-startup-screen t)
 ;; start in full screen
 '(initial-frame-alist (quote ((fullscreen . maximized)))))
(custom-set-faces

 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


 ;; Add theme path
 ;;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
 ;;(load-theme 'solarized t)

 ;; Set theme
(load-theme 'misterioso)

 ;;Prolog
(autoload 'run-prolog "prolog" "Start a Prolog sub-process." t)
(autoload 'prolog-mode "prolog" "Major mode for editing Prolog programs." t)
(autoload 'mercury-mode "prolog" "Major mode for editing Mercury programs." t)
(setq prolog-system 'swi)
(setq auto-mode-alist (append '(("\\.pl$" . prolog-mode)
				("\\.m$" . mercury-mode))
			      auto-mode-alist))
