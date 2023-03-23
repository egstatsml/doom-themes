;;; doom-catppuccin-latte-theme.el -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2022 Ethan Goan
;;
;; Author: Ethan Goan <ethanjgoan@gmail.com>
;; Maintainer: Ethan Goan <ethanjgoan@gmail.com>
;; Created: August 28, 2022
;; Modified: August 28, 2022
;; Version: 0.0.1
;; Keywords: abbrev bib c calendar comm convenience data docs emulations extensions faces files frames games hardware help hypermedia i18n internal languages lisp local maint mail matching mouse multimedia news outlines processes terminals tex tools unix vc wp
;; Homepage: https://github.com/ethan/doom-catppuccin-latte-theme
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;
;;
;;; Code:
(require 'doom-themes)


;;
;;; Variables

(defgroup doom-catppuccin-latte-theme nil
  "Options for the `doom-catppuccin' theme."
  :group 'doom-themes)

;;
;;; Theme definition

(def-doom-theme doom-catppuccin-latte
  "A dark theme inspired by the Catppuccin Pallete"

  ;; name        default   256       16
  (
   (rosewater   '("#dc8a78" "#ffd7df" nil))
   (flamingo   '("#dd7878" "#ffd7df" nil))
   (pink       '("#ea76cb" "#d7afaf" nil))
   (mauve      '("#8839ef" "#d7afd7" nil))
   (red         '("#d20f39" "#ff0000" "red"))
   (maroon     '("#e64553" "#ffafaf" nil))
   (peach      '("#fe640b" "#ffaf87" nil))
   (yellow      '("#df8e1d" "#ffd700" "brightyellow"))
   (green       '("#40a02b" "#afff00" "green"))
   (teal       '("#179299" "#afd7d7" nil))
   (sky       '("#04a5e5" "#afd7d7" nil))
   (sapphire  '("#209fb5" "#afd7d7" nil))
   (blue        '("#1e66f5" "#5fafff" "brightblue"))
   (lavender   '("#7287fd" "#d7d7ff" nil))
   (text   '("#4c4f69" "#d7d7ff" nil))
   (subtext1   '("#5c5f77" "#d7d7ff" nil))
   (subtext0   '("#6c6f85" "#d7d7ff" nil))
   (overlay2   '("#7c7f93" "#d7d7ff" nil))
   (overlay1   '("#8c8fa1" "#d7d7ff" nil))
   (overlay0   '("#9ca0b0" "#d7d7ff" nil))
   (surface2   '("#acb0be" "#d7d7ff" nil))
   (surface1   '("#bcc0cc" "#d7d7ff" nil))
   (surface0   '("#ccd0da" "#d7d7ff" nil))
   (base       '("#eff1f5" "#d7d7ff" nil))
   (mantle   '("#e6e9ef" "#d7d7ff" nil))
   (crust   '("#dce0e8" "#d7d7ff" nil))

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
   (fg       text)
   (fg-alt    subtext1)

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
   (comments       (doom-darken grey 0.25))
   (doc-comments   (doom-darken grey 0.35))
   (constants      flamingo)
   (functions      blue)
   (keywords       maroon)
   (methods        blue)
   (operators      blue)
   (type           lavender)
   (strings        green)
   (variables      yellow)
   (numbers        green)
   (region         (doom-lighten rosewater 0.5))
   (error          red)
   (warning        rosewater)
   (success        green)
   (vc-modified    blue)
   (vc-added       green)
   (vc-deleted     red))

  ;;;; Base theme face overrides
  ((lazy-highlight :background base4 :foreground fg :weight 'bold)

   (region               :background region     :foreground text   :distant-foreground (doom-darken region 0.2) :extend t)

   (evil-goggles-default-face :inherit 'region)
   ;; ;; vertico
   (vertico-current :background region :foreground text :distant-foreground base3 :extend t)

   (tooltip :background (doom-darken bg-alt 0.2) :foreground fg)

   ;; ;;;; css-mode <built-in> / scss-mode
   ;; (css-proprietary-property :foreground orange)
   ;; (css-property             :foreground green)
   ;; (css-selector             :foreground blue)
   ;; ;;;; dired-k
   ;; (dired-k-commited :foreground base4)
   ;; (dired-k-modified :foreground vc-modified)
   ;; (dired-k-ignored :foreground blue)
   ;; (dired-k-added    :foreground vc-added)
   ;; ;;;; doom-modeline
   ;; (doom-modeline-buffer-path       :foreground green :weight 'bold)
   ;; (doom-modeline-buffer-major-mode :inherit 'doom-modeline-buffer-path)
   ;; ;; magit
   ;; (magit-diff-hunk-heading-highlight :foreground bg  :background flamingo :weight 'bold :extend t)
   ;; ;;;; man <built-in>
   ;; (Man-overstrike :inherit 'bold :foreground magenta)
   ;; (Man-underline :inherit 'underline :foreground blue)
   ;; ;;;; org <built-in>
   (org-block                    :background bg    :extend t)
   (org-document-title           :foreground builtin  :height 1.4       :weight 'bold)
   ;; ;; org habits
   (org-habit-alert-face :background peach :foreground base5)
   (org-habit-alert-future-face :background peach :foreground base5)
   (org-habit-clear-face :background green :foreground base5)
   (org-habit-clear-future-face :background green :foreground base5)
   (org-habit-overdue-face :background red :foreground base5)
   (org-habit-overdue-future-face :background dark-blue :foreground base5)
   ;; org super agenda
   (org-super-agenda-calendar :background bg-alt)
   (org-super-agenda-overdue :background bg-alt :foreground red)
   ;;

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
   ;; (rjsx-tag :foreground red)
   ;; (rjsx-attr :foreground yellow :slant 'italic :weight 'medium)))
   ))
