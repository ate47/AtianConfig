; pour ne pas charger l'environnement par defaut
(setq inhibit-default-init t)

; pour ne pas avoir le buffer hideux par defaut
(setq inhibit-startup-screen t)

; pour avoir des parentheses qui correspondent
(load-library "paren")
(show-paren-mode t)

; pour pouvoir circonflexer et tremaiser sur des configs penibles
(load-library "iso-transl")

; des couleurs sympas
(set-foreground-color "white")
(set-background-color "navy")
(set-cursor-color "orange")
(set-mouse-color "GreenYellow")
(setq default-frame-alist '((minibuffer . t)
			    (cursor-color . "orange")      ; <==
			    (menu-bar-lines . 3)
			    (mouse-color . "GreenYellow")       ; <==
			    (foreground-color . "white")
			    (background-color  . "navy")
			    )
)

; des reglages fins (voir le manuel d'emacs pour la signification)
(setq require-final-newline 'maybe)
(setq default-major-mode 'text-mode)
(setq version-control t)
(put 'narrow-to-page 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'eval-expression 'disabled nil)
(setq backup-by-copying-when-linked  t)
(setq trim-versions-witout-asking t)
(setq make-backup-files nil)
(put 'upcase-region 'disabled nil)


; associaions de touches
(global-set-key "l" 'goto-line) 
(setq last-kbd-macro  "qlength (the array)")
(global-set-key [C-backspace] 'backward-kill-word)
(global-set-key [f12] 'scroll-up)
(global-set-key [f11] 'scroll-down)
(global-set-key [f13] 'beginning-of-buffer)
(global-set-key [f14] 'end-of-buffer)
(global-set-key [kp-f1] 'beginning-of-buffer)
(global-set-key [kp-f2] 'end-of-buffer)
(global-set-key  "N" 'make-meta)


; Afficher numero de lignes et colonnes
(line-number-mode t)
(column-number-mode t)

; Afficher l'heure
(display-time)

; Coloration syntaxique
(global-font-lock-mode t)

; coupe les lignes apres 78 char.
(setq fill-column 80)
(auto-fill-mode 1)

; Titre de la fenetre :
(setq frame-title-format '("%b"))


;; NE PAS TOUCHER A PARTIR D'ICI !!!!!!!!!!



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (deeper-blue)))
 '(safe-local-variable-values (quote ((TeX-master . t)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-builtin-face ((nil (:background "light" :foreground "coral"))))
 '(font-lock-comment-face ((nil (:background "light" :foreground "red"))))
 '(font-lock-function-name-face ((nil (:background "light" :foreground "aquamarine"))))
 '(font-lock-keyword-face ((nil (:background "light" :foreground "steelblue1"))))
 '(font-lock-string-face ((nil (:background "light" :foreground "orange"))))
 '(font-lock-type-face ((nil (:background "light" :foreground "green"))))
 '(font-lock-variable-name-face ((nil (:background "light" :foreground "yellow")))))

