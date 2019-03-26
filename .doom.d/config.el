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

;; Set calendar route
;;(setq +calendar-org-gcal-secret-file "~/.doom.d/secret.el")
;;;###autoload
;;(defun cfw:open-org-calendar-with-werlabs ()
;;  (interactive)
;;  (let ((org-agenda-files '("~/org/" "~/org/calendars/werlabs.org")))
;;    (call-interactively '+calendar/open-calendar)))
;;(define-key cfw:calendar-mode-map "SPC" nil)

;; Magit fix TAB
(with-eval-after-load 'magit
  (define-key magit-mode-map "<tab>" 'magit-section-toggle))
;; js config
(after! js2-mode
  ;; use eslintd-fix so when i save it fixes dumb shit
  (add-hook 'js2-mode-hook #'eslintd-fix-mode)

  ;; Indent shit
  (setq js2-basic-offset 2))

;; html config
(after! web-mode
  (add-hook 'web-mode-hook #'flycheck-mode)

  (setq web-mode-markup-indent-offset 2 ;; Indentation
        web-mode-code-indent-offset 2
        web-mode-enable-auto-quoting nil ;; disbale adding "" after an =
        web-mode-auto-close-style 2))
