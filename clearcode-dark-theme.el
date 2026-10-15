;;; clearcode-dark-theme.el --- ClearCode (Dark) port of the Visual Studio theme  -*- lexical-binding: t; -*-

;; Ported from ClearCode/Themes/ClearCodeDark.xml (github.com/amritoit/ClearCode).
;; A warm espresso base with amber accents.  Colors below are taken verbatim
;; from the Visual Studio theme; the comment on each palette entry names the
;; <Color> element it came from.

(deftheme clearcode-dark
  "ClearCode (Dark): warm espresso background with amber accents.")

(let ((class '((class color) (min-colors 89)))
      ;; Surfaces
      (bg         "#160D02")  ; Text Manager / Plain Text background
      (bg-alt     "#1A1003")  ; Output, Find Results, Command Window
      (bg-ui      "#221A0F")  ; EnvironmentBackground / ToolWindowBackground
      (bg-tab     "#2A1B06")  ; ToolWindowTabSelectedTab
      (bg-margin  "#2E1E08")  ; Indicator Margin
      (bg-tab-off "#43290A")  ; FileTabInactiveGradientTop
      (bg-sel-off "#4A3410")  ; Inactive Selected Text / HighlightedReference
      (bg-sel     "#6E4A16")  ; Selected Text / brace matching
      (gutter     "#5C4420")  ; Visible Whitespace / ScrollBarThumbBackground
      ;; Text
      (fg         "#D6CAB6")  ; Plain Text foreground / ToolWindowText
      (fg-dim     "#C7B394")  ; FileTabInactiveText / XML CData Section
      (accent     "#B5731A")  ; Highlight / StatusBarDefault
      (accent-fg  "#FFFFFF")  ; HighlightText / StatusBarText
      ;; Syntax
      (keyword    "#CFA45E")  ; keyword, keyword - control
      (comment    "#6A5C44")  ; comment, xml doc comment - text
      (string     "#ACBE86")  ; string, string - verbatim
      (number     "#CDA470")  ; number
      (err        "#D07C63")  ; Error
      (operator   "#C8B49A")  ; operator, punctuation, preprocessor text
      (type       "#86AC9D")  ; class name, struct name, delegate name
      (iface      "#93BBAB")  ; interface name
      (enum       "#9EBE94")  ; enum name, type parameter name
      (method     "#E7C98A")  ; method name
      (property   "#E7D2A8")  ; property name
      (variable   "#D9C4A0")  ; field name, parameter name, local name
      (preproc    "#C29A6A")  ; preprocessor keyword
      (attribute  "#D1B48A")) ; XML / XAML Attribute

  (custom-theme-set-faces
   'clearcode-dark

   ;;;; Basics
   `(default                    ((,class (:background ,bg :foreground ,fg))))
   `(cursor                     ((,class (:background ,accent))))
   `(fringe                     ((,class (:background ,bg-margin :foreground ,gutter))))
   `(region                     ((,class (:background ,bg-sel :extend t))))
   `(secondary-selection        ((,class (:background ,bg-sel-off :extend t))))
   `(highlight                  ((,class (:background ,bg-sel-off))))
   `(hl-line                    ((,class (:background ,bg-ui :extend t))))
   `(shadow                     ((,class (:foreground ,comment))))
   `(vertical-border            ((,class (:foreground ,bg-tab-off))))
   `(window-divider             ((,class (:foreground ,bg-tab-off))))
   `(window-divider-first-pixel ((,class (:foreground ,bg-tab-off))))
   `(window-divider-last-pixel  ((,class (:foreground ,bg-tab-off))))
   `(minibuffer-prompt          ((,class (:foreground ,keyword :weight bold))))
   `(escape-glyph               ((,class (:foreground ,attribute))))
   `(homoglyph                  ((,class (:foreground ,attribute))))
   `(trailing-whitespace        ((,class (:background ,err))))
   `(error                      ((,class (:foreground ,err :weight bold))))
   `(warning                    ((,class (:foreground ,keyword :weight bold))))
   `(success                    ((,class (:foreground ,enum :weight bold))))
   `(link                       ((,class (:foreground ,keyword :underline t))))
   `(link-visited               ((,class (:foreground ,preproc :underline t))))
   `(tooltip                    ((,class (:background ,bg-ui :foreground ,fg))))
   `(fill-column-indicator      ((,class (:foreground ,bg-margin))))
   `(widget-field               ((,class (:background ,bg-ui :foreground ,fg))))

   ;;;; Line numbers and mode line
   `(line-number               ((,class (:background ,bg-margin :foreground ,gutter))))
   `(line-number-current-line  ((,class (:background ,bg-margin :foreground ,keyword :weight bold))))
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
   `(font-lock-builtin-face              ((,class (:foreground ,preproc))))
   `(font-lock-comment-face              ((,class (:foreground ,comment :slant italic))))
   `(font-lock-comment-delimiter-face    ((,class (:foreground ,comment :slant italic))))
   `(font-lock-constant-face             ((,class (:foreground ,enum))))
   `(font-lock-doc-face                  ((,class (:foreground ,string :slant italic))))
   `(font-lock-doc-markup-face           ((,class (:foreground ,attribute))))
   `(font-lock-function-name-face        ((,class (:foreground ,method))))
   `(font-lock-function-call-face        ((,class (:foreground ,method))))
   `(font-lock-keyword-face              ((,class (:foreground ,keyword))))
   `(font-lock-negation-char-face        ((,class (:foreground ,operator))))
   `(font-lock-number-face               ((,class (:foreground ,number))))
   `(font-lock-operator-face             ((,class (:foreground ,operator))))
   `(font-lock-preprocessor-face         ((,class (:foreground ,preproc))))
   `(font-lock-property-name-face        ((,class (:foreground ,property))))
   `(font-lock-property-use-face         ((,class (:foreground ,property))))
   `(font-lock-punctuation-face          ((,class (:foreground ,operator))))
   `(font-lock-delimiter-face            ((,class (:foreground ,operator))))
   `(font-lock-bracket-face              ((,class (:foreground ,operator))))
   `(font-lock-misc-punctuation-face     ((,class (:foreground ,operator))))
   `(font-lock-escape-face               ((,class (:foreground ,attribute))))
   `(font-lock-regexp-face               ((,class (:foreground ,attribute))))
   `(font-lock-string-face               ((,class (:foreground ,string))))
   `(font-lock-type-face                 ((,class (:foreground ,type))))
   `(font-lock-variable-name-face        ((,class (:foreground ,variable))))
   `(font-lock-variable-use-face         ((,class (:foreground ,variable))))
   `(font-lock-warning-face              ((,class (:foreground ,err :weight bold))))

   ;;;; Search and matching
   `(isearch             ((,class (:background ,accent :foreground ,accent-fg :weight bold))))
   `(isearch-fail        ((,class (:background ,err :foreground ,bg))))
   `(lazy-highlight      ((,class (:background ,bg-sel-off :foreground ,fg-dim))))
   `(match               ((,class (:background ,bg-sel-off :foreground ,fg-dim))))
   `(query-replace       ((,class (:background ,accent :foreground ,accent-fg))))
   `(show-paren-match    ((,class (:background ,bg-sel :weight bold))))
   `(show-paren-mismatch ((,class (:background ,err :foreground ,bg :weight bold))))

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
   `(orderless-match-face-3       ((,class (:foreground ,enum :weight bold))))
   `(marginalia-documentation     ((,class (:foreground ,comment :slant italic))))
   `(marginalia-key               ((,class (:foreground ,keyword))))
   `(marginalia-type              ((,class (:foreground ,type))))
   `(marginalia-file-name         ((,class (:foreground ,fg-dim))))
   `(marginalia-size              ((,class (:foreground ,number))))
   `(marginalia-date              ((,class (:foreground ,enum))))
   `(ido-first-match              ((,class (:foreground ,keyword :weight bold))))
   `(ido-only-match               ((,class (:foreground ,enum :weight bold))))
   `(ido-subdir                   ((,class (:foreground ,type))))
   `(ido-indicator                ((,class (:foreground ,err))))

   ;;;; Dired
   `(dired-directory ((,class (:foreground ,type :weight bold))))
   `(dired-symlink   ((,class (:foreground ,iface))))
   `(dired-header    ((,class (:foreground ,keyword :weight bold))))
   `(dired-marked    ((,class (:foreground ,accent :weight bold))))
   `(dired-flagged   ((,class (:foreground ,err :weight bold))))

   ;;;; Diffs
   `(diff-added        ((,class (:foreground ,enum :extend t))))
   `(diff-removed      ((,class (:foreground ,err :extend t))))
   `(diff-changed      ((,class (:foreground ,number :extend t))))
   `(diff-header       ((,class (:background ,bg-ui :foreground ,fg :extend t))))
   `(diff-file-header  ((,class (:background ,bg-ui :foreground ,keyword :weight bold :extend t))))
   `(diff-hunk-header  ((,class (:background ,bg-tab-off :foreground ,type :extend t))))
   `(diff-refine-added   ((,class (:background ,bg-sel-off :foreground ,enum))))
   `(diff-refine-removed ((,class (:background ,bg-sel-off :foreground ,err))))
   `(diff-hl-insert    ((,class (:background ,enum :foreground ,enum))))
   `(diff-hl-change    ((,class (:background ,number :foreground ,number))))
   `(diff-hl-delete    ((,class (:background ,err :foreground ,err))))

   ;;;; Magit
   `(magit-section-heading            ((,class (:foreground ,keyword :weight bold))))
   `(magit-section-highlight          ((,class (:background ,bg-ui :extend t))))
   `(magit-branch-local               ((,class (:foreground ,iface))))
   `(magit-branch-remote              ((,class (:foreground ,enum))))
   `(magit-hash                       ((,class (:foreground ,comment))))
   `(magit-tag                        ((,class (:foreground ,number))))
   `(magit-diff-added                 ((,class (:foreground ,enum :extend t))))
   `(magit-diff-removed               ((,class (:foreground ,err :extend t))))
   `(magit-diff-added-highlight       ((,class (:background ,bg-ui :foreground ,enum :extend t))))
   `(magit-diff-removed-highlight     ((,class (:background ,bg-ui :foreground ,err :extend t))))
   `(magit-diff-context               ((,class (:foreground ,fg-dim :extend t))))
   `(magit-diff-context-highlight     ((,class (:background ,bg-ui :foreground ,fg-dim :extend t))))
   `(magit-diff-hunk-heading          ((,class (:background ,bg-tab-off :foreground ,fg-dim :extend t))))
   `(magit-diff-hunk-heading-highlight ((,class (:background ,bg-sel-off :foreground ,fg :extend t))))

   ;;;; Flycheck
   `(flycheck-error         ((,class (:underline (:style wave :color ,err)))))
   `(flycheck-warning       ((,class (:underline (:style wave :color ,keyword)))))
   `(flycheck-info          ((,class (:underline (:style wave :color ,type)))))
   `(flycheck-fringe-error   ((,class (:foreground ,err))))
   `(flycheck-fringe-warning ((,class (:foreground ,keyword))))
   `(flycheck-fringe-info    ((,class (:foreground ,type))))

   ;;;; Whitespace
   `(whitespace-space      ((,class (:background ,bg :foreground ,gutter))))
   `(whitespace-tab        ((,class (:background ,bg :foreground ,gutter))))
   `(whitespace-newline    ((,class (:foreground ,gutter))))
   `(whitespace-empty      ((,class (:background ,bg-ui))))
   `(whitespace-line       ((,class (:background ,bg-ui))))
   `(whitespace-trailing   ((,class (:background ,err :foreground ,bg))))

   ;;;; Org
   `(org-level-1   ((,class (:foreground ,keyword :weight bold))))
   `(org-level-2   ((,class (:foreground ,type :weight bold))))
   `(org-level-3   ((,class (:foreground ,enum))))
   `(org-level-4   ((,class (:foreground ,property))))
   `(org-link      ((,class (:foreground ,keyword :underline t))))
   `(org-block     ((,class (:background ,bg-alt :extend t))))
   `(org-code      ((,class (:foreground ,string))))
   `(org-verbatim  ((,class (:foreground ,attribute))))
   `(org-todo      ((,class (:foreground ,err :weight bold))))
   `(org-done      ((,class (:foreground ,enum :weight bold))))
   `(org-date      ((,class (:foreground ,number :underline t))))
   `(org-table     ((,class (:foreground ,fg-dim))))

   ;;;; Misc packages used by this config
   `(persp-selected-face ((,class (:foreground ,keyword :weight bold))))
   `(hes-escape-backslash-face ((,class (:foreground ,attribute :weight bold))))
   `(hes-escape-sequence-face  ((,class (:foreground ,attribute :weight bold)))))

  (custom-theme-set-variables
   'clearcode-dark
   `(ansi-color-names-vector
     [,bg ,err ,string ,keyword ,type ,attribute ,iface ,fg])))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'clearcode-dark)

;;; clearcode-dark-theme.el ends here
