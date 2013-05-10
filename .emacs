;;Small window for netbook:
(if (window-system)
  (set-frame-height (selected-frame) 28))
;;If you get error: "symbol's function definition is void: window-system" use this instead:
;;(set-frame-height (selected-frame) 28)

;;Disable toolbar to save screen real estate:
(tool-bar-mode -1)

;;Line numbers visualised:
(global-linum-mode)

;;Use NXhtml (Linux):
(load "~/.emacs.d/nxhtml/autostart.el")

;;Use NXhtml (Windows):
;;(load "C:/Program Files/emacs-23.3/nxhtml/autostart.el")

;;but without nXhtml's multimode background coloring:
(setq mumamo-no-chunk-coloring)

;;color theme:
(defun color-theme-face-attr-construct (face frame)
       (if (atom face)
           (custom-face-attributes-get face frame)
         (if (and (consp face) (eq (car face) 'quote))
             (custom-face-attributes-get (cadr face) frame)
           (custom-face-attributes-get (car face) frame))))
;;color theme selection:
(require 'color-theme)
     (color-theme-initialize)
     ;;the following line is not needed if using one of the default themes
     (load-file "~/.emacs.d/color-theme-almost-monokai.el")
     ;;If in GUI mode we use Monokai, else, i.e. in terminal,  we use dark laptop.
     (if window-system (color-theme-almost-monokai)
                       (color-theme-dark-laptop))
;; set up UTF-8 coding, important when editing Web files
(prefer-coding-system       'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))

;; MS Windows clipboard is UTF-16LE 
;;(set-clipboard-coding-system 'utf-16le-dos)

;;Save text to Linux clipboard
(setq x-select-enable-clipboard t)

;; the following code avoids an alert about obsolete function on emacs 23.3:
  (when (and (equal emacs-major-version 23)
             (equal emacs-minor-version 3))
    (eval-after-load "bytecomp"
      '(add-to-list 'byte-compile-not-obsolete-vars
                    'font-lock-beginning-of-syntax-function))
  ;; additional code required because tramp-compat.el clobbers this variable:
    (eval-after-load "tramp-compat"
      '(add-to-list 'byte-compile-not-obsolete-vars
                    'font-lock-beginning-of-syntax-function)))

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(before-save-hook nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
