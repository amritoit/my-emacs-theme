# Emacs Custom Theme Configuration

Add the directory containing the custom theme to Emacs' theme search path:

```elisp
(add-to-list 'custom-theme-load-path "~/.emacs.d/my-emacs-theme")
```

Then load the custom theme automatically when Emacs starts:

```elisp
;; Load the custom theme automatically on startup.
;; The `t` skips the theme safety confirmation prompt.
(load-theme 'amrit-dark-theme t)
```

### Complete Configuration

```elisp
(add-to-list 'custom-theme-load-path "~/.emacs.d/my-emacs-theme")

;; Load the custom theme automatically on startup.
;; The `t` skips the theme safety confirmation prompt.
(load-theme 'amrit-dark-theme t)
```
