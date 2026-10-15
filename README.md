# Emacs Custom Theme Configuration

## Available themes

| Theme | Description |
| --- | --- |
| `amrit-dark-theme` | Original dark theme (loaded on startup). |
| `amrit-light-theme` | Original light theme. |
| `clearcode-dark` | Port of [ClearCode](https://github.com/amritoit/ClearCode) for Visual Studio: espresso `#160D02` base, amber `#B5731A` accent. |
| `clearcode-light` | Port of the ClearCode light variant: grey surfaces, blue keywords, purple `#705697` accent. |

The `clearcode-*` themes are generated from `Themes/ClearCodeDark.xml` and
`Themes/ClearCodeLight.xml` in the ClearCode repository; each palette entry in
the Emacs file names the Visual Studio `<Color>` element it came from, so the
two stay easy to keep in sync.

To try one interactively, disable the active theme first so its faces do not
bleed through:

```elisp
(mapc #'disable-theme custom-enabled-themes)
(load-theme 'clearcode-dark t)
```

## Setup

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
