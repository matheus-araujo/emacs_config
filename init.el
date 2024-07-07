(global-display-line-numbers-mode 1)


;;MELPA packages

(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))

(setq inferior-lisp-program "sbcl")



;;Gnus config
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(ispell-dictionary nil)
 '(package-selected-packages
   '(cyberpunk-theme eglot rust-mode slime docker-compose-mode dockerfile-mode magit cmake-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; rust config
(add-hook 'rust-mode-hook 'lsp-deferred)

;; Enable Org mode
(require 'org)

;; Set the default directory for Org files
(setq org-directory "~/org")

;; Set the default file for capturing diary entries
(setq org-default-notes-file (concat org-directory "/diary.org"))

;; Define a global key for capturing new diary entries
(global-set-key (kbd "C-c c") 'org-capture)

;; Define capture templates
(setq org-capture-templates
      '(("d" "Diary" entry (file+datetree "~/org/diary.org")
         "* %?\nEntered on %U\n  %i\n  %a")))
