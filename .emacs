;;Small window for netbook:
(if (window-system)
  (set-frame-height (selected-frame) 28))

;;Disable toolbar to save screen real estate:
(tool-bar-mode -1)

;;Line numbers visualised:
(global-linum-mode)

;;Use NXhtml (Linux):
(load "~/.emacs.d/nxhtml/autostart.el")

;;Use NXhtml (Windows):
;;(load "C:/Program Files/emacs-23.3/nxhtml/autostart.el")

;;but without nXhtml's multimode background coloring:
(setq mumamo-background-colors nil)

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
     (color-theme-almost-monokai)

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
