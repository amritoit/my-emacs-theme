# Emacs Custom Theme Configuration

## Available themes

| Theme | Description |
| --- | --- |
| `amrit-dark-theme` | Original dark theme (loaded on startup). |
| `amrit-light-theme` | Original light theme. |
| `clearcode-dark` | Port of [ClearCode](https://github.com/amritoit/ClearCode) for Visual Studio: espresso `#160D02` base, amber `#B5731A` accent. |
| `clearcode-light` | Port of the ClearCode light variant: grey surfaces, blue keywords, purple `#705697` accent. |
| `cobalt-blue` | Dark theme on a deep cobalt navy `#001A3D` canvas, with `#0047AB` cobalt and amber `#FFC14D` accents. |

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

### About `cobalt-blue`

The canvas is `#001A3D` — the same 215° hue as cobalt blue, but dark enough to
sit behind text all day. The signature `#0047AB` is kept as an accent surface
(current completion candidate, matching paren, active tab) in the places where
the theme sets the foreground explicitly, so its contrast is known.

Every foreground colour was checked for WCAG contrast against the canvas:
default text reaches 15.08:1 and every syntax colour reaches AAA, except
comments, which are deliberately held at 5.07:1 so they stay subdued.

- Blue-family hues are avoided for syntax, since they sink into the canvas.
  The palette uses amber, peach, pink, green, aqua and lavender instead.
- Surfaces lighten away from the canvas in four clearly separated steps
  (`#002A57` → `#003167` → `#003C80` → `#0047AB`), so `hl-line`, the fringe,
  the region and the accent never read as the same tone.

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
