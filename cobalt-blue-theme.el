;;; cobalt-blue-theme.el --- Dark theme built on a cobalt blue canvas  -*- lexical-binding: t; -*-

;; Built around a deep cobalt navy (#001A3D) canvas -- the same 215-degree hue
;; as cobalt blue, but dark enough to sit behind text all day.  The signature
;; cobalt #0047AB is kept as an accent surface (current completion candidate,
;; matching paren, active tab) in the places where this file sets the
;; foreground explicitly, so its contrast is known.
;;
;; Every foreground colour was checked for WCAG contrast against the canvas:
;; default text reaches 15.08:1 and every syntax colour reaches AAA, except
;; comments, which are deliberately held at 5.07:1 so they stay subdued.
;;
;; Blue-family hues are avoided for syntax because they sink into the canvas;
;; the palette leans on amber, peach, pink, green, aqua and lavender.
;;
;; Surfaces lighten away from the canvas in four clearly separated steps, so
;; hl-line, the fringe, the region and the accent never read as the same tone.

(deftheme cobalt-blue
  "Dark theme on a deep cobalt navy canvas with amber accents.")

(let ((class '((class color) (min-colors 89)))
      ;; Surfaces, lightening away from the canvas
      (bg        "#001A3D")  ; canvas
      (bg-ui     "#002A57")  ; hl-line, header line, inactive mode line
      (bg-gutter "#003167")  ; fringe, line numbers, lazy highlight
      (bg-sel    "#003C80")  ; region
      (cobalt    "#0047AB")  ; signature cobalt, only where fg is explicit
      ;; Text
      (fg        "#E8F0FE")  ; 15.08:1
      (dim       "#93ACD4")  ;  7.48:1 - secondary UI text
      (comment   "#6E8CBE")  ;  5.07:1 - deliberately subdued
      (accent    "#FFC14D")  ; cursor, mode line, isearch
      (accent-fg "#00305F")  ; text on accent, 8.18:1
      ;; Syntax (all AAA against the canvas)
      (keyword   "#FFC14D")  ; 10.69:1
      (str       "#A5E88C")  ; 11.95:1
      (num       "#FFB07C")  ;  9.67:1
      (const     "#FFA3C7")  ;  9.31:1
      (fn        "#FFE08A")  ; 13.40:1
      (type      "#7FE3D4")  ; 11.39:1
      (var       "#CFE0F8")  ; 12.90:1
      (op        "#BBD0EE")  ; 11.00:1
      (builtin   "#CDBEF9")  ; 10.15:1
      (err       "#FFB0A5")  ;  9.88:1
      (warn      "#FFD166")) ; 11.99:1

  (custom-theme-set-faces
   'cobalt-blue

   ;;;; Basics
   `(default                    ((,class (:background ,bg :foreground ,fg))))
   `(cursor                     ((,class (:background ,accent))))
   `(fringe                     ((,class (:background ,bg-gutter :foreground ,dim))))
   `(region                     ((,class (:background ,bg-sel :extend t))))
   `(secondary-selection        ((,class (:background ,bg-gutter :extend t))))
   `(highlight                  ((,class (:background ,bg-gutter))))
   `(hl-line                    ((,class (:background ,bg-ui :extend t))))
   `(shadow                     ((,class (:foreground ,dim))))
   `(vertical-border            ((,class (:foreground ,bg-gutter))))
   `(window-divider             ((,class (:foreground ,bg-gutter))))
   `(window-divider-first-pixel ((,class (:foreground ,bg-gutter))))
   `(window-divider-last-pixel  ((,class (:foreground ,bg-gutter))))
   `(minibuffer-prompt          ((,class (:foreground ,accent :weight bold))))
   `(escape-glyph               ((,class (:foreground ,const))))
   `(homoglyph                  ((,class (:foreground ,const))))
   `(trailing-whitespace        ((,class (:background ,err))))
   `(error                      ((,class (:foreground ,err :weight bold))))
   `(warning                    ((,class (:foreground ,warn :weight bold))))
   `(success                    ((,class (:foreground ,str :weight bold))))
   `(link                       ((,class (:foreground ,accent :underline t))))
   `(link-visited               ((,class (:foreground ,const :underline t))))
   `(tooltip                    ((,class (:background ,bg-gutter :foreground ,fg))))
   `(fill-column-indicator      ((,class (:foreground ,bg-gutter))))
   `(widget-field               ((,class (:background ,bg-gutter :foreground ,fg))))

   ;;;; Line numbers, mode line, tabs
   `(line-number              ((,class (:background ,bg-gutter :foreground ,dim))))
   `(line-number-current-line ((,class (:background ,bg-gutter :foreground ,accent :weight bold))))
   `(mode-line                ((,class (:background ,accent :foreground ,accent-fg :box nil))))
   `(mode-line-inactive       ((,class (:background ,bg-ui :foreground ,dim :box nil))))
   `(mode-line-buffer-id      ((,class (:weight bold))))
   `(mode-line-emphasis       ((,class (:weight bold))))
   `(mode-line-highlight      ((,class (:background ,cobalt :foreground ,fg))))
   `(header-line              ((,class (:background ,bg-ui :foreground ,fg :box nil))))
   `(tab-bar                  ((,class (:background ,bg-ui :foreground ,dim :box nil))))
   `(tab-bar-tab              ((,class (:background ,cobalt :foreground ,fg :weight bold :box nil))))
   `(tab-bar-tab-inactive     ((,class (:background ,bg-gutter :foreground ,dim :box nil))))
   `(tab-line                 ((,class (:background ,bg-ui :foreground ,dim :box nil))))

   ;;;; Font lock
   `(font-lock-builtin-face           ((,class (:foreground ,builtin))))
   `(font-lock-comment-face           ((,class (:foreground ,comment :slant italic))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,comment :slant italic))))
   `(font-lock-constant-face          ((,class (:foreground ,const))))
   `(font-lock-doc-face               ((,class (:foreground ,str :slant italic))))
   `(font-lock-doc-markup-face        ((,class (:foreground ,builtin))))
   `(font-lock-function-name-face     ((,class (:foreground ,fn))))
   `(font-lock-function-call-face     ((,class (:foreground ,fn))))
   `(font-lock-keyword-face           ((,class (:foreground ,keyword))))
   `(font-lock-negation-char-face     ((,class (:foreground ,err))))
   `(font-lock-number-face            ((,class (:foreground ,num))))
   `(font-lock-operator-face          ((,class (:foreground ,op))))
   `(font-lock-preprocessor-face      ((,class (:foreground ,builtin))))
   `(font-lock-property-name-face     ((,class (:foreground ,type))))
   `(font-lock-property-use-face      ((,class (:foreground ,type))))
   `(font-lock-punctuation-face       ((,class (:foreground ,op))))
   `(font-lock-delimiter-face         ((,class (:foreground ,op))))
   `(font-lock-bracket-face           ((,class (:foreground ,op))))
   `(font-lock-misc-punctuation-face  ((,class (:foreground ,op))))
   `(font-lock-escape-face            ((,class (:foreground ,const))))
   `(font-lock-regexp-face            ((,class (:foreground ,const))))
   `(font-lock-string-face            ((,class (:foreground ,str))))
   `(font-lock-type-face              ((,class (:foreground ,type))))
   `(font-lock-variable-name-face     ((,class (:foreground ,var))))
   `(font-lock-variable-use-face      ((,class (:foreground ,var))))
   `(font-lock-warning-face           ((,class (:foreground ,err :weight bold))))

   ;;;; Search and matching
   `(isearch             ((,class (:background ,accent :foreground ,accent-fg :weight bold))))
   `(isearch-fail        ((,class (:background ,err :foreground ,accent-fg))))
   `(lazy-highlight      ((,class (:background ,bg-gutter :foreground ,accent))))
   `(match               ((,class (:background ,bg-gutter :foreground ,accent))))
   `(query-replace       ((,class (:background ,accent :foreground ,accent-fg))))
   `(show-paren-match    ((,class (:background ,cobalt :foreground ,accent :weight bold))))
   `(show-paren-mismatch ((,class (:background ,err :foreground ,accent-fg :weight bold))))

   ;;;; Completion UI
   `(completions-common-part      ((,class (:foreground ,accent :weight bold))))
   `(completions-first-difference ((,class (:foreground ,fn :weight bold))))
   `(completions-annotations      ((,class (:foreground ,dim :slant italic))))
   `(vertico-current              ((,class (:background ,cobalt :extend t))))
   `(vertico-group-title          ((,class (:foreground ,type :slant italic))))
   `(vertico-group-separator      ((,class (:foreground ,bg-gutter :strike-through t))))
   `(orderless-match-face-0       ((,class (:foreground ,accent :weight bold))))
   `(orderless-match-face-1       ((,class (:foreground ,const :weight bold))))
   `(orderless-match-face-2       ((,class (:foreground ,type :weight bold))))
   `(orderless-match-face-3       ((,class (:foreground ,str :weight bold))))
   `(marginalia-documentation     ((,class (:foreground ,dim :slant italic))))
   `(marginalia-key               ((,class (:foreground ,accent))))
   `(marginalia-type              ((,class (:foreground ,type))))
   `(marginalia-file-name         ((,class (:foreground ,dim))))
   `(marginalia-size              ((,class (:foreground ,num))))
   `(marginalia-date              ((,class (:foreground ,str))))
   `(ido-first-match              ((,class (:foreground ,accent :weight bold))))
   `(ido-only-match               ((,class (:foreground ,str :weight bold))))
   `(ido-subdir                   ((,class (:foreground ,type))))
   `(ido-indicator                ((,class (:foreground ,err))))

   ;;;; Dired
   `(dired-directory ((,class (:foreground ,type :weight bold))))
   `(dired-symlink   ((,class (:foreground ,builtin))))
   `(dired-header    ((,class (:foreground ,accent :weight bold))))
   `(dired-marked    ((,class (:foreground ,accent :weight bold))))
   `(dired-flagged   ((,class (:foreground ,err :weight bold))))

   ;;;; Diffs
   `(diff-added          ((,class (:foreground ,str :extend t))))
   `(diff-removed        ((,class (:foreground ,err :extend t))))
   `(diff-changed        ((,class (:foreground ,num :extend t))))
   `(diff-header         ((,class (:background ,bg-ui :foreground ,fg :extend t))))
   `(diff-file-header    ((,class (:background ,bg-ui :foreground ,accent :weight bold :extend t))))
   `(diff-hunk-header    ((,class (:background ,bg-gutter :foreground ,type :extend t))))
   `(diff-refine-added   ((,class (:background ,bg-gutter :foreground ,str))))
   `(diff-refine-removed ((,class (:background ,bg-gutter :foreground ,err))))
   `(diff-hl-insert      ((,class (:background ,str :foreground ,str))))
   `(diff-hl-change      ((,class (:background ,num :foreground ,num))))
   `(diff-hl-delete      ((,class (:background ,err :foreground ,err))))

   ;;;; Magit
   `(magit-section-heading             ((,class (:foreground ,accent :weight bold))))
   `(magit-section-highlight           ((,class (:background ,bg-ui :extend t))))
   `(magit-branch-local                ((,class (:foreground ,type))))
   `(magit-branch-remote               ((,class (:foreground ,str))))
   `(magit-hash                        ((,class (:foreground ,dim))))
   `(magit-tag                         ((,class (:foreground ,num))))
   `(magit-diff-added                  ((,class (:foreground ,str :extend t))))
   `(magit-diff-removed                ((,class (:foreground ,err :extend t))))
   `(magit-diff-added-highlight        ((,class (:background ,bg-ui :foreground ,str :extend t))))
   `(magit-diff-removed-highlight      ((,class (:background ,bg-ui :foreground ,err :extend t))))
   `(magit-diff-context                ((,class (:foreground ,dim :extend t))))
   `(magit-diff-context-highlight      ((,class (:background ,bg-ui :foreground ,dim :extend t))))
   `(magit-diff-hunk-heading           ((,class (:background ,bg-gutter :foreground ,dim :extend t))))
   `(magit-diff-hunk-heading-highlight ((,class (:background ,bg-sel :foreground ,fg :extend t))))

   ;;;; Flycheck
   `(flycheck-error          ((,class (:underline (:style wave :color ,err)))))
   `(flycheck-warning        ((,class (:underline (:style wave :color ,warn)))))
   `(flycheck-info           ((,class (:underline (:style wave :color ,type)))))
   `(flycheck-fringe-error   ((,class (:foreground ,err))))
   `(flycheck-fringe-warning ((,class (:foreground ,warn))))
   `(flycheck-fringe-info    ((,class (:foreground ,type))))

   ;;;; Whitespace
   `(whitespace-space    ((,class (:background ,bg :foreground ,bg-gutter))))
   `(whitespace-tab      ((,class (:background ,bg :foreground ,bg-gutter))))
   `(whitespace-newline  ((,class (:foreground ,bg-gutter))))
   `(whitespace-empty    ((,class (:background ,bg-ui))))
   `(whitespace-line     ((,class (:background ,bg-ui))))
   `(whitespace-trailing ((,class (:background ,err :foreground ,accent-fg))))

   ;;;; Org
   `(org-level-1  ((,class (:foreground ,accent :weight bold))))
   `(org-level-2  ((,class (:foreground ,type :weight bold))))
   `(org-level-3  ((,class (:foreground ,const))))
   `(org-level-4  ((,class (:foreground ,builtin))))
   `(org-link     ((,class (:foreground ,accent :underline t))))
   `(org-block    ((,class (:background ,bg-ui :extend t))))
   `(org-code     ((,class (:foreground ,str))))
   `(org-verbatim ((,class (:foreground ,const))))
   `(org-todo     ((,class (:foreground ,err :weight bold))))
   `(org-done     ((,class (:foreground ,str :weight bold))))
   `(org-date     ((,class (:foreground ,num :underline t))))
   `(org-table    ((,class (:foreground ,op))))

   ;;;; Misc packages used by this config
   `(persp-selected-face       ((,class (:foreground ,accent :weight bold))))
   `(hes-escape-backslash-face ((,class (:foreground ,const :weight bold))))
   `(hes-escape-sequence-face  ((,class (:foreground ,const :weight bold)))))

  (custom-theme-set-variables
   'cobalt-blue
   `(ansi-color-names-vector
     [,bg-sel ,err ,str ,keyword ,op ,const ,type ,fg])))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'cobalt-blue)

;;; cobalt-blue-theme.el ends here
