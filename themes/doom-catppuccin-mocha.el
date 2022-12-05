;;; ../.dotfiles/.doom.d/doom-catppuccin-theme.el -*- lexical-binding: t; -*-

;;; doom-catppuccin-theme.el --- adapted from equinusocio's Material themes -*- lexical-binding: t; no-byte-compile: t; -*-
;;
;; Author: Ethan Goan <https://github.com/ethangoan>
;; Maintainer: Ethan Goan
;;
;;; Commentary:
;;; Code:

(require 'doom-themes)


;;
;;; Variables

(defgroup doom-catppuccin-theme nil
  "Options for the `doom-catppuccin' theme."
  :group 'doom-themes)

;;
;;; Theme definition

(def-doom-theme doom-catppuccin
  "A dark theme inspired by the Catppuccin Pallete"

  ;; name        default   256       16
  (
   (rosewater   '("#F5E0DC" "#ffd7df" nil))
   (flamingo   '("#F2CDCD" "#ffd7df" nil))
   (pink       '("#F5C2E7" "#d7afaf" nil))
   (mauve      '("#cba6f7" "#d7afd7" nil))
   (red         '("#f38ba8" "#ff0000" "red"))
   (maroon     '("#eba0ac" "#ffafaf" nil))
   (peach      '("#fab387" "#ffaf87" nil))
   (yellow      '("#f9e2af" "#ffd700" "brightyellow"))
   (green       '("#a6e3a1" "#afff00" "green"))
   (teal       '("#94e2d5" "#afd7d7" nil))
   (sky       '("#89dceb" "#afd7d7" nil))
   (sapphire  '("#74c7ec" "#afd7d7" nil))
   (blue        '("#89b4fa" "#5fafff" "brightblue"))
   (lavender   '("#b4befe" "#d7d7ff" nil))
   (text   '("#cdd6f4" "#d7d7ff" nil))
   (subtext1   '("#bac2de" "#d7d7ff" nil))
   (subtext0   '("#a6adc8" "#d7d7ff" nil))
   (overlay2   '("#9399b2" "#d7d7ff" nil))
   (overlay1   '("#7f849c" "#d7d7ff" nil))
   (overlay0   '("#7f849c" "#d7d7ff" nil))
   (surface2   '("#585b70" "#d7d7ff" nil))
   (surface1   '("#45475a" "#d7d7ff" nil))
   (surface0   '("#313244" "#d7d7ff" nil))
   (base       '("#1e1e2e" "#d7d7ff" nil))
   (mantle   '("#181825" "#d7d7ff" nil))
   (crust   '("#11111b" "#d7d7ff" nil))

   (bg         base)
   (bg-alt    crust)
   (base0    mantle)
   (base1    surface0)
   (base2    surface1)
   (base3    surface2)
   (base4    overlay0)
   (base5    overlay1)
   (base6    overlay2)
   (base7    subtext0)
   (base8    subtext1)
   (fg       rosewater)
   (fg-alt    flamingo)

   (grey   surface2)


   ;; (red         '("#f38ba8" "#ff0000" "red"))
   (orange     peach)
   ;; (green       '("#a6e3a1" "#afff00" "green"))
   ;; (teal        '("#94e2d5" "#00d7af" "brightgreen"))
   ;; (yellow      '("#f9e2af" "#ffd700" "brightyellow"))
   ;; (blue        '("#89dceb" "#5fafff" "brightblue"))
   ;; dark blue taken from latte pallette
   (dark-blue   '("#7287fd" "#d7ffff" "blue"))
   (magenta     pink)
   (violet      mauve)
   (cyan        text)
   ;; dark-cyan from the latte pallette
   (dark-cyan   '("#209fb5" "cyan"))

   ;; face categories -- required for all themes
   (highlight      cyan)
   (vertical-bar   base3)
   (selection      base4)
   (builtin        yellow)
   (comments       grey)
   (doc-comments   (doom-lighten grey 0.25))
   (constants      flamingo)
   (functions      blue)
   (keywords       maroon)
   (methods        blue)
   (operators      blue)
   (type           lavender)
   (strings        green)
   (variables      yellow)
   (numbers        green)
   (region         rosewater)
   (error          red)
   (warning        rosewater)
   (success        green)
   (vc-modified    blue)
   (vc-added       green)
   (vc-deleted     red))

  ;;;; Base theme face overrides
  ((lazy-highlight :background base4 :foreground fg :weight 'bold)

   (region               :background region     :foreground base2   :distant-foreground (doom-darken region 0.2) :extend t)

   ;; vertico
   (vertico-current :background region :foreground base2 :distant-foreground base3 :extend t)

   (tooltip :background (doom-darken bg-alt 0.2) :foreground fg)

   ;;;; css-mode <built-in> / scss-mode
   (css-proprietary-property :foreground orange)
   (css-property             :foreground green)
   (css-selector             :foreground blue)
   ;;;; dired-k
   (dired-k-commited :foreground base4)
   (dired-k-modified :foreground vc-modified)
   (dired-k-ignored :foreground blue)
   (dired-k-added    :foreground vc-added)
   ;;;; doom-modeline
   (doom-modeline-buffer-path       :foreground green :weight 'bold)
   (doom-modeline-buffer-major-mode :inherit 'doom-modeline-buffer-path)
   ;; magit
   (magit-diff-hunk-heading-highlight :foreground bg  :background flamingo :weight 'bold :extend t)
   ;;;; man <built-in>
   (Man-overstrike :inherit 'bold :foreground magenta)
   (Man-underline :inherit 'underline :foreground blue)
   ;;;; org <built-in>
   (org-block                    :background base1    :extend t)
   (org-document-title           :foreground builtin  :height 1.4       :weight 'bold)
   ;; org habits
   (org-habit-alert-face :background peach :foreground base5)
   (org-habit-alert-future-face :background peach :foreground base5)
   (org-habit-clear-face :background green :foreground base5)
   (org-habit-clear-future-face :background green :foreground base5)
   (org-habit-overdue-face :background red :foreground base5)
   (org-habit-overdue-future-face :background dark-blue :foreground base5)
   ;; outlines
   (outline-1 :foreground red  :height 1.3                      :weight 'bold :extend t)
   (outline-2 :foreground flamingo :height 1.15                     :weight 'bold :extend t)
   (outline-3 :foreground mauve  1.05                     :weight 'bold :extend t)
   (outline-4 :foreground rosewater    :weight 'bold :extend t)
   (outline-5 :foreground yellow :weight 'bold :extend t)
   (outline-6 :foreground peach     :weight 'bold :extend t)
   (outline-7 :foreground maroon  :weight 'bold :extend t)
   ;;;; rainbow-delimiters
   (rainbow-delimiters-depth-1-face :foreground lavender)
   (rainbow-delimiters-depth-2-face :foreground peach)
   (rainbow-delimiters-depth-3-face :foreground blue)
   (rainbow-delimiters-depth-4-face :foreground maroon)
   (rainbow-delimiters-depth-5-face :foreground green)
   (rainbow-delimiters-depth-6-face :foreground yellow)
   (rainbow-delimiters-depth-7-face :foreground pink)
   (rainbow-delimiters-depth-8-face :foreground teal)
   (rainbow-delimiters-depth-9-face :foreground mauve)
   ;;;; rjsx-mode
   (rjsx-tag :foreground red)
   (rjsx-attr :foreground yellow :slant 'italic :weight 'medium)))
