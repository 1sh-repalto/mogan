;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; MODULE      : text-toolbar.scm
;; DESCRIPTION : text selection toolbar icons
;; COPYRIGHT   : (C) 2026
;;
;; This software falls under the GNU general public license version 3 or later.
;; It comes WITHOUT ANY WARRANTY WHATSOEVER. For details, see the file LICENSE
;; in the root directory or <http://www.gnu.org/licenses/gpl-3.0.html>.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(texmacs-module (generic text-toolbar)
  (:use (generic format-edit)
        (generic format-menu)
        (generic generic-edit)))

(menu-bind text-toolbar-icons
  ((balloon (icon "tm_bold.xpm") "Write bold text")
   (toggle-bold))
  ((balloon (icon "tm_italic.xpm") "Write italic text")
   (toggle-italic))
  ((balloon (icon "tm_underline.xpm") "Write underline")
   (toggle-underlined))
  ((balloon (icon "tm_marked.svg") "Marked text")
   (mark-text))
  (=> (balloon (icon "tm_color.xpm") "Select a foreground color")
      (link color-menu))
  (=> (balloon (icon "tm_chapter.xpm") "chapter::menu")
      (link chapter-menu))
  (=> (balloon (icon "tm_theorem.xpm") "enunciation")
      (link enunciation-menu))          
  ((balloon (icon "left-align.xpm") "left aligned")
   (make-line-with "par-mode" "left"))
  ((balloon (icon "middle-align.xpm") "center")
   (make-line-with "par-mode" "center"))
  ((balloon (icon "right-align.xpm") "right aligned")
   (make-line-with "par-mode" "right")))
