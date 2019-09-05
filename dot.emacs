;;; package --- Summary


;;; Commentary:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                   .emacs                                   ;;
;; 2019-09-04T23:00							      ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; Code:


;;; PACKAGE
;;;--------------------------------------------------

(require 'package)
(add-to-list 'package-archives
	      '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("org" . "https://orgmode.org/elpa/") t)
(when (version< emacs-version "27.0") (package-initialize))

;;;--------------------------------------------------


;;; DEFAULT FRAME and MAC
;;;--------------------------------------------------

;; Set the opening frame size
(setq default-frame-alist
      '((top . 10) (left . 10) (width . 200) (height . 150)))

;;; Set the Mac meta key to Command
(setq mac-command-modifier 'meta) ; http://ergoemacs.org/emacs/emacs_hyper_super_keys.html

;;;--------------------------------------------------


;;; GLOBAL KEY BINDINGS
;;;--------------------------------------------------

;; Org-mode global key bindings
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-switchb)

;; Magit-mode global key bindings
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)

(defun prev-match ()
  "Give 'next-match a negative 1."
  (interactive nil) (next-match -1))
(global-set-key [f3] 'next-match)
(global-set-key [(shift f3)] 'prev-match)
(global-set-key [backtab] 'auto-complete)

(global-linum-mode)

;;;--------------------------------------------------

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (tuareg magit org))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;;===============================================================================
;;; OCAML
;;; -----
;;; https://ocaml.org
;;; https://ocaml.org/docs/
;;; https://github.com/ocaml

;;; OPAM
;;; ----
;;; https://opam.ocaml.org
;;; https://opam.ocaml.org/doc/
;;; https://github.com/ocaml/opam

;;; OPAM-REPOSITORY
;;; ---------------
;;; https://github.com/ocaml/opam-repository

;;; DUNE
;;; ----
;;; https://github.com/ocaml/dune

;;; MERLIN
;;; ------
;;; https://github.com/ocaml/merlin
;;; https://github.com/ocaml/merlin/wiki/emacs-from-scratch

;;; TUAREG
;;; ------
;;; https://github.com/ocaml/tuareg

;;; REAL WORLD OCAML
;;; ----------------
;;; https://dev.realworldocaml.org/install.html

;;;--------------------------------------------------------------------------------
;;; https://github.com/janestreet/install-ocaml
;;; -------------------------------------------
;;; Instructions for setting up an OCaml development environment

;;; https://github.com/OCamlPro/opam-user-setup
;;; -------------------------------------------
;;; Simplify the configuration of editors for using OCaml tools

;;; opam user-setup install
;;; -----------------------
;;; will set up vim and/or emacs (whichever ones you have installed)
;;; with syntax highlighting, indentation, go-to-definition and
;;; printing the types of expressions.
;;; To learn more, visit https://github.com/OCamlPro/opam-user-setup.

;; ## added by OPAM user-setup for emacs / base
;; ## 56ab50dc8996d2bb95e7856a6eddb17b
;; ## you can edit, but keep this line
(require 'opam-user-setup "~/.emacs.d/opam-user-setup.el")
;; ## end of OPAM user-setup addition for emacs / base
;; ## keep this line
