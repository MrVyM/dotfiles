(load-theme 'misterioso)
(setq column-number-mode t)

(add-hook 'prog-mode-hook (lambda () (setq display-line-numbers 'relative)))
(addOB-hook 'conf-mode-hook (lambda () (setq display-line-numbers 'relative)))
(setq-default display-line-numbers-width 2)
(setq-default display-line-numbers-widen t)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode 1)

(setq-default cursor-type 'bar
              cursor-in-non-selected-windows nil)

(set-default 'truncate-lines t)

(setq scroll-step 1) ; keyboard scroll one line at a time
(setq scroll-preserve-screen-position t)
(setq scroll-conservatively 101)

(global-set-key (kbd "C-M-z") 'undo)

(defalias 'yes-or-no-p 'y-or-n-p)

(setq visible-bell 1)


(set-language-environment "UTF-8")
(prefer-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)

(set-face-background  'region                 "color-17")
(set-face-foreground  'region                 "red")
(set-face-bold-p      'font-lock-builtin-face t ) 
