;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Mari§"
      user-mail-address "mari@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
;(setq display-line-numbers-type t)
(setq display-line-numbers-type t)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(global-set-key (kbd "<C-down>") 'shrink-window)
(global-set-key (kbd "<C-up>") 'enlarge-window)
(global-set-key (kbd "<C-right>") 'shrink-window-horizontally)
(global-set-key (kbd "<C-left>") 'enlarge-window-horizontally)


;;(setq doom-font (font-spec :family "Roboto Mono" :size 14))
(setq doom-font (font-spec :family "Anonymous Pro Minus":size 24))


(add-hook 'c-mode-hook
        (lambda () (setq flycheck-clang-include-path
                       (list "/usr/include/glib-2.0" "/usr/lib/glib-2.0/include"))))

;; (setq irony-libclang-additional-flags
;;       (append '("-I" "inc") irony-libclang-additional-flags))
;;
;;
;;(defvar zenburn-override-colors-alist
  ;;'(("zenburn-bg" . "#111111")))
;;(load-theme 'zenburn t)

(setq org-superstar-headline-bullets-list '("" "❄" "🌹" "💙" "🐬"))

;(require 'rust-mode)

; tabs to spaces
;(add-hook 'rust-mode-hook
 ;         (lambda () (setq indent-tabs-mode nil)))
; enables automatic formatting
;(setq rust-format-on-save t)

;;(define-key rust-mode-map (kbd "C-c C-c") 'rust-run)
