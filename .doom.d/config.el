;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

;; Set global fonts
(add-to-list 'default-frame-alist '(font . "Ubuntu Mono 14" ))
(set-face-attribute 'default t :font "Ubuntu Mono 14" )

;; Set theme
(load-theme 'doom-one-light t)

;; Reset treemacs icons
(with-eval-after-load 'treemacs
  (treemacs-reset-icons))
