; -*- Mode: Emacs-Lisp  ; Coding: utf-8 -*-
;; -------------------------------------------------------------------
;; @ load-path

;; load-path
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory (expand-file-name (concat user-emacs-directory path))))
      (add-to-list 'load-path default-directory)
      (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
	  (normal-top-level-add-subdirs-to-load-path))))))

;;load-path
;;=> (add-to-load-path "elisp" "xxx" "xxx")
(add-to-load-path "elisp")

;;-------------------------------------------------------------------
;; @ general

;; common lisp
(require 'cl)

;;charactor code
(set-language-environment "Japanese")
(let ((ws window-system))
  (cond ((eq ws 'w32)
	 (prefer-coding-system 'utf-8-unix)
	 (set-default-coding-systems 'utf-8-unix)
	 (setq file-name-coding-system 'sjis)
	 (setq locale-coding-system 'utf-8))
	((eq ws 'ns)
	 (require 'ucs-normalize)
	 (prefer-coding-system 'utf-8-hfs)
	 (setq file-name-coding-system 'utf-8-hfs)
	 (setq locale-coding-system 'utf-8-hfs))))

;;Windows Meiryo
;;Mac Ricty
(let ((ws window-system))
  (cond ((eq ws 'w32)
	 (set-face-attribute 'default nil
			     :family "Meiryo" ;;eisu
			     :height 100)
	 (set-fontset-font nil 'japanese-jisx0208 (font-spec :family "Meiryo")));;japanese
	((eq ws 'ns)
	 (set-face-attribute 'default nil
			     :family "Ricty" ;;eisu
			     :height 140)
	 (set-fontset-font nil 'japanese-jisx0208 (font-spec :family "Ricty"))))) ;;japanese

;;startup noApperance
(setq inhibit-startup-screen t)

;;scratchMessage delete
(setq initial-scratch-message "")

;; Emacs directory
 (when load-file-name
   (setq user-emacs-directory (file-name-directory load-file-name)))
;; Package management
   (require 'package)
   (add-to-list 'package-archives
       '("marmalade" . "http://marmalade-repo.org/packages/"))
        (package-initialize)
   (defun package-install-with-refresh (package)
      (unless (assq package package-alist)
        (package-refresh-contents))
      (unless (package-installed-p package)
        (package-install package)))
;; Install evil
   (package-install-with-refresh 'evil)
;; Enable evil
   (require 'evil)
   (evil-mode 1)'
