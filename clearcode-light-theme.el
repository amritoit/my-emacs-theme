;;; clearcode-light-theme.el --- ClearCode (Light) port of the Visual Studio theme  -*- lexical-binding: t; -*-

;; Ported from ClearCode/Themes/ClearCodeLight.xml (github.com/amritoit/ClearCode).
;; Colors below are taken verbatim from the Visual Studio theme; the comment on
;; each palette entry names the <Color> element it came from.
;;
;; Note: unlike the dark variant, the light XML is a cool grey/blue/purple
;; scheme rather than the warm cream described in the project README.  This
;; file follows the XML, which is what Visual Studio actually renders.

(deftheme clearcode-light
  "ClearCode (Light): light grey surfaces with blue keywords and a purple accent.")

(let ((class '((class color) (min-colors 89)))
      ;; Surfaces
      (bg         "#F5F5F5")  ; Text Manager / Plain Text background
      (bg-alt     "#F2F2F2")  ; ToolWindowBackground / Indicator Margin
      (bg-ui      "#ECECEC")  ; EnvironmentBackground
      (bg-tab     "#E0E0E0")  ; TitleBarActive
      (bg-tab-off "#D6D6D6")  ; FileTabInactiveGradientTop
      (bg-sel-off "#D3DBCD")  ; Inactive Selected Text / HighlightedReference
      (bg-sel     "#C9D0D9")  ; Selected Text / brace matching
      (gutter     "#C0C0C0")  ; Visible Whitespace / ScrollBarThumbBackground
      ;; Text
      (fg         "#333333")  ; Plain Text foreground / ToolWindowText
      (fg-dim     "#777777")  ; FileTabInactiveText / XML CData Section
      (accent     "#705697")  ; Highlight / StatusBarDefault
      (accent-fg  "#FFFFFF")  ; HighlightText / StatusBarText
      ;; Syntax
      (keyword    "#4B69C6")  ; keyword, keyword - control, preprocessor keyword
      (comment    "#AAAAAA")  ; comment, xml doc comment - text
      (string     "#448C27")  ; string, string - verbatim
      (number     "#9C5D27")  ; number
      (err        "#CD3131")  ; Error
      (operator   "#777777")  ; operator, punctuation, preprocessor text
      (type       "#7A3E9D")  ; class / struct / interface / enum / delegate name
      (method     "#AA3731")  ; method name
      (property   "#8190A0")  ; property name, XML / XAML Attribute
      (variable   "#333333")  ; field name, parameter name, local name
      ;; In this variant the type colour is purple, which reads wrong for
      ;; "added"/"success" semantics, so those reuse the string green.
      (green      "#448C27"))

  (custom-theme-set-faces
   'clearcode-light

   ;;;; Basics
   `(default                    ((,class (:background ,bg :foreground ,fg))))
   `(cursor                     ((,class (:background ,accent))))
   `(fringe                     ((,class (:background ,bg-alt :foreground ,gutter))))
   `(region                     ((,class (:background ,bg-sel :extend t))))
   `(secondary-selection        ((,class (:background ,bg-sel-off :extend t))))
   `(highlight                  ((,class (:background ,bg-sel-off))))
   `(hl-line                    ((,class (:background ,bg-ui :extend t))))
   `(shadow                     ((,class (:foreground ,fg-dim))))
   `(vertical-border            ((,class (:foreground ,bg-tab-off))))
   `(window-divider             ((,class (:foreground ,bg-tab-off))))
   `(window-divider-first-pixel ((,class (:foreground ,bg-tab-off))))
   `(window-divider-last-pixel  ((,class (:foreground ,bg-tab-off))))
   `(minibuffer-prompt          ((,class (:foreground ,accent :weight bold))))
   `(escape-glyph               ((,class (:foreground ,property))))
   `(homoglyph                  ((,class (:foreground ,property))))
   `(trailing-whitespace        ((,class (:background ,err))))
   `(error                      ((,class (:foreground ,err :weight bold))))
   `(warning                    ((,class (:foreground ,number :weight bold))))
   `(success                    ((,class (:foreground ,green :weight bold))))
   `(link                       ((,class (:foreground ,keyword :underline t))))
   `(link-visited               ((,class (:foreground ,type :underline t))))
   `(tooltip                    ((,class (:background ,bg-alt :foreground ,fg))))
   `(fill-column-indicator      ((,class (:foreground ,bg-tab-off))))
   `(widget-field               ((,class (:background ,bg-ui :foreground ,fg))))

   ;;;; Line numbers and mode line
   `(line-number               ((,class (:background ,bg-alt :foreground ,gutter))))
   `(line-number-current-line  ((,class (:background ,bg-alt :foreground ,accent :weight bold))))
   `(mode-line                 ((,class (:background ,accent :foreground ,accent-fg :box nil))))
   `(mode-line-inactive        ((,class (:background ,bg-tab-off :foreground ,fg-dim :box nil))))
   `(mode-line-buffer-id       ((,class (:weight bold))))
   `(mode-line-emphasis        ((,class (:weight bold))))
   `(mode-line-highlight       ((,class (:background ,bg-sel))))
   `(header-line               ((,class (:background ,bg-ui :foreground ,fg :box nil))))
   `(tab-bar                   ((,class (:background ,bg-ui :foreground ,fg-dim :box nil))))
   `(tab-bar-tab               ((,class (:background ,bg-tab :foreground ,fg :weight bold :box nil))))
   `(tab-bar-tab-inactive      ((,class (:background ,bg-tab-off :foreground ,fg-dim :box nil))))
   `(tab-line                  ((,class (:background ,bg-ui :foreground ,fg-dim :box nil))))

   ;;;; Font lock
   `(font-lock-builtin-face              ((,class (:foreground ,keyword))))
   `(font-lock-comment-face              ((,class (:foreground ,comment :slant italic))))
   `(font-lock-comment-delimiter-face    ((,class (:foreground ,comment :slant italic))))
   `(font-lock-constant-face             ((,class (:foreground ,type))))
   `(font-lock-doc-face                  ((,class (:foreground ,string :slant italic))))
   `(font-lock-doc-markup-face           ((,class (:foreground ,property))))
   `(font-lock-function-name-face        ((,class (:foreground ,method))))
   `(font-lock-function-call-face        ((,class (:foreground ,method))))
   `(font-lock-keyword-face              ((,class (:foreground ,keyword))))
   `(font-lock-negation-char-face        ((,class (:foreground ,operator))))
   `(font-lock-number-face               ((,class (:foreground ,number))))
   `(font-lock-operator-face             ((,class (:foreground ,operator))))
   `(font-lock-preprocessor-face         ((,class (:foreground ,keyword))))
   `(font-lock-property-name-face        ((,class (:foreground ,property))))
   `(font-lock-property-use-face         ((,class (:foreground ,property))))
   `(font-lock-punctuation-face          ((,class (:foreground ,operator))))
   `(font-lock-delimiter-face            ((,class (:foreground ,operator))))
   `(font-lock-bracket-face              ((,class (:foreground ,operator))))
   `(font-lock-misc-punctuation-face     ((,class (:foreground ,operator))))
   `(font-lock-escape-face               ((,class (:foreground ,property))))
   `(font-lock-regexp-face               ((,class (:foreground ,property))))
   `(font-lock-string-face               ((,class (:foreground ,string))))
   `(font-lock-type-face                 ((,class (:foreground ,type))))
   `(font-lock-variable-name-face        ((,class (:foreground ,variable))))
   `(font-lock-variable-use-face         ((,class (:foreground ,variable))))
   `(font-lock-warning-face              ((,class (:foreground ,err :weight bold))))

   ;;;; Search and matching
   `(isearch             ((,class (:background ,accent :foreground ,accent-fg :weight bold))))
   `(isearch-fail        ((,class (:background ,err :foreground ,accent-fg))))
   `(lazy-highlight      ((,class (:background ,bg-sel-off :foreground ,fg))))
   `(match               ((,class (:background ,bg-sel-off :foreground ,fg))))
   `(query-replace       ((,class (:background ,accent :foreground ,accent-fg))))
   `(show-paren-match    ((,class (:background ,bg-sel :weight bold))))
   `(show-paren-mismatch ((,class (:background ,err :foreground ,accent-fg :weight bold))))

   ;;;; Completion UI
   `(completions-common-part      ((,class (:foreground ,keyword :weight bold))))
   `(completions-first-difference ((,class (:foreground ,method :weight bold))))
   `(completions-annotations      ((,class (:foreground ,comment :slant italic))))
   `(vertico-current              ((,class (:background ,bg-sel :extend t))))
   `(vertico-group-title          ((,class (:foreground ,type :slant italic))))
   `(vertico-group-separator      ((,class (:foreground ,bg-tab-off :strike-through t))))
   `(orderless-match-face-0       ((,class (:foreground ,keyword :weight bold))))
   `(orderless-match-face-1       ((,class (:foreground ,method :weight bold))))
   `(orderless-match-face-2       ((,class (:foreground ,type :weight bold))))
   `(orderless-match-face-3       ((,class (:foreground ,green :weight bold))))
   `(marginalia-documentation     ((,class (:foreground ,comment :slant italic))))
   `(marginalia-key               ((,class (:foreground ,keyword))))
   `(marginalia-type              ((,class (:foreground ,type))))
   `(marginalia-file-name         ((,class (:foreground ,fg-dim))))
   `(marginalia-size              ((,class (:foreground ,number))))
   `(marginalia-date              ((,class (:foreground ,green))))
   `(ido-first-match              ((,class (:foreground ,keyword :weight bold))))
   `(ido-only-match               ((,class (:foreground ,green :weight bold))))
   `(ido-subdir                   ((,class (:foreground ,type))))
   `(ido-indicator                ((,class (:foreground ,err))))

   ;;;; Dired
   `(dired-directory ((,class (:foreground ,type :weight bold))))
   `(dired-symlink   ((,class (:foreground ,property))))
   `(dired-header    ((,class (:foreground ,keyword :weight bold))))
   `(dired-marked    ((,class (:foreground ,accent :weight bold))))
   `(dired-flagged   ((,class (:foreground ,err :weight bold))))

   ;;;; Diffs
   `(diff-added        ((,class (:foreground ,green :extend t))))
   `(diff-removed      ((,class (:foreground ,err :extend t))))
   `(diff-changed      ((,class (:foreground ,number :extend t))))
   `(diff-header       ((,class (:background ,bg-ui :foreground ,fg :extend t))))
   `(diff-file-header  ((,class (:background ,bg-ui :foreground ,keyword :weight bold :extend t))))
   `(diff-hunk-header  ((,class (:background ,bg-tab-off :foreground ,type :extend t))))
   `(diff-refine-added   ((,class (:background ,bg-sel-off :foreground ,green))))
   `(diff-refine-removed ((,class (:background ,bg-sel-off :foreground ,err))))
   `(diff-hl-insert    ((,class (:background ,green :foreground ,green))))
   `(diff-hl-change    ((,class (:background ,number :foreground ,number))))
   `(diff-hl-delete    ((,class (:background ,err :foreground ,err))))

   ;;;; Magit
   `(magit-section-heading            ((,class (:foreground ,keyword :weight bold))))
   `(magit-section-highlight          ((,class (:background ,bg-ui :extend t))))
   `(magit-branch-local               ((,class (:foreground ,keyword))))
   `(magit-branch-remote              ((,class (:foreground ,green))))
   `(magit-hash                       ((,class (:foreground ,fg-dim))))
   `(magit-tag                        ((,class (:foreground ,number))))
   `(magit-diff-added                 ((,class (:foreground ,green :extend t))))
   `(magit-diff-removed               ((,class (:foreground ,err :extend t))))
   `(magit-diff-added-highlight       ((,class (:background ,bg-ui :foreground ,green :extend t))))
   `(magit-diff-removed-highlight     ((,class (:background ,bg-ui :foreground ,err :extend t))))
   `(magit-diff-context               ((,class (:foreground ,fg-dim :extend t))))
   `(magit-diff-context-highlight     ((,class (:background ,bg-ui :foreground ,fg-dim :extend t))))
   `(magit-diff-hunk-heading          ((,class (:background ,bg-tab-off :foreground ,fg-dim :extend t))))
   `(magit-diff-hunk-heading-highlight ((,class (:background ,bg-sel-off :foreground ,fg :extend t))))

   ;;;; Flycheck
   `(flycheck-error         ((,class (:underline (:style wave :color ,err)))))
   `(flycheck-warning       ((,class (:underline (:style wave :color ,number)))))
   `(flycheck-info          ((,class (:underline (:style wave :color ,keyword)))))
   `(flycheck-fringe-error   ((,class (:foreground ,err))))
   `(flycheck-fringe-warning ((,class (:foreground ,number))))
   `(flycheck-fringe-info    ((,class (:foreground ,keyword))))

   ;;;; Whitespace
   `(whitespace-space      ((,class (:background ,bg :foreground ,gutter))))
   `(whitespace-tab        ((,class (:background ,bg :foreground ,gutter))))
   `(whitespace-newline    ((,class (:foreground ,gutter))))
   `(whitespace-empty      ((,class (:background ,bg-ui))))
   `(whitespace-line       ((,class (:background ,bg-ui))))
   `(whitespace-trailing   ((,class (:background ,err :foreground ,accent-fg))))

   ;;;; Org
   `(org-level-1   ((,class (:foreground ,keyword :weight bold))))
   `(org-level-2   ((,class (:foreground ,type :weight bold))))
   `(org-level-3   ((,class (:foreground ,method))))
   `(org-level-4   ((,class (:foreground ,property))))
   `(org-link      ((,class (:foreground ,keyword :underline t))))
   `(org-block     ((,class (:background ,bg-alt :extend t))))
   `(org-code      ((,class (:foreground ,string))))
   `(org-verbatim  ((,class (:foreground ,property))))
   `(org-todo      ((,class (:foreground ,err :weight bold))))
   `(org-done      ((,class (:foreground ,green :weight bold))))
   `(org-date      ((,class (:foreground ,number :underline t))))
   `(org-table     ((,class (:foreground ,fg-dim))))

   ;;;; Misc packages used by this config
   `(persp-selected-face ((,class (:foreground ,accent :weight bold))))
   `(hes-escape-backslash-face ((,class (:foreground ,property :weight bold))))
   `(hes-escape-sequence-face  ((,class (:foreground ,property :weight bold)))))

  (custom-theme-set-variables
   'clearcode-light
   `(ansi-color-names-vector
     [,fg ,err ,green ,number ,keyword ,type ,property ,bg])))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'clearcode-light)

;;; clearcode-light-theme.el ends here
