;;; void-theme.el --- color theme  -*- lexical-binding: t; -*-

;; Author: Adrian Menschikow <github.com/menshikow>
;; Version: 0.1
;; Filename: void-theme.el
;; Package-Requires: ((emacs "24"))
;; URL: https://github.com/
;; License: MIT

;;; Commentary:

;; Dark monochrome colorscheme.  Based on <https://github.com/nickav/naysayer-theme.el>

;;; Code:

(unless (>= emacs-major-version 24)
  (error "The void theme requires Emacs 24 or later!"))

(deftheme void "The void color theme")

;; Grayscale accent colors ordered lightest to darkest
(defcustom -voidtheme-gray-1 "#f5f5f5" "Accent colors - lightest gray" :type 'string :group 'monokai)
(defcustom -voidtheme-gray-2 "#d9d9d9" "Accent colors - light gray" :type 'string :group 'monokai)
(defcustom -voidtheme-gray-3 "#bfbfbf" "Accent colors - light-medium gray" :type 'string :group 'monokai)
(defcustom -voidtheme-gray-4 "#a6a6a6" "Accent colors - medium gray" :type 'string :group 'monokai)
(defcustom -voidtheme-gray-5 "#8c8c8c" "Accent colors - medium-dark gray" :type 'string :group 'monokai)
(defcustom -voidtheme-gray-6 "#737373" "Accent colors - dark-medium gray" :type 'string :group 'monokai)
(defcustom -voidtheme-gray-7 "#595959" "Accent colors - dark gray" :type 'string :group 'monokai)
(defcustom -voidtheme-gray-8 "#404040" "Accent colors - darkest gray" :type 'string :group 'monokai)

(let ((background "#0d0d0d")
      (gutters    "#141414")
      (gutter-fg  "#141414")
      (gutters-active "#141414")
      (builtin      "#ffffff")
      (selection  "#2b3a4a")
      (text       "#ffffff")
      (comments   "#44b340")
      (punctuation "#a6a6a6")
      (keywords "##ffffff")
      (variables "#ffffff")
      (functions "#ffffff")
      (methods    "#ffffff")
      (strings    "#a3a3a3")
      (constants "#ebebeb")
      (macros "#d9d9d9")
      (numbers "#ffffff")
      (white     "#ffffff")
      (error      "#ff0000")
      (success    "#00ff00")
      (warning "#ffea00")
      (highlight-line "#1c1c1c")
      (line-fg "#4d4d4d"))

  (custom-theme-set-faces
   'void

   ;; Default colors
   ;; *****************************************************************************

   `(default                          ((t (:foreground ,text :background ,background :weight normal))))
   `(region                           ((t (:foreground nil :background ,selection))))
   `(cursor                           ((t (:background ,white                        ))))
   `(fringe                           ((t (:background ,background   :foreground ,white))))
   `(linum                            ((t (:background ,background :foreground ,gutter-fg))))
   `(highlight ((t (:foreground nil :background ,selection))))

   ;; Font lock faces
   ;; *****************************************************************************

   `(font-lock-keyword-face           ((t (:foreground ,keywords))))
   `(font-lock-type-face              ((t (:foreground ,punctuation))))
   `(font-lock-constant-face          ((t (:foreground ,constants))))
   `(font-lock-variable-name-face     ((t (:foreground ,variables))))
   `(font-lock-builtin-face           ((t (:foreground ,builtin))))
   `(font-lock-string-face            ((t (:foreground ,strings))))
   `(font-lock-comment-face           ((t (:foreground ,comments))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,comments))))
   `(font-lock-doc-face               ((t (:foreground ,comments))))
   `(font-lock-function-name-face     ((t (:foreground ,functions :weight bold))))
   `(font-lock-doc-string-face        ((t (:foreground ,strings))))
   `(font-lock-preprocessor-face      ((t (:foreground ,macros))))
   `(font-lock-warning-face           ((t (:foreground ,warning :weight bold ))))

   ;; Plugins
   ;; *****************************************************************************
   `(trailing-whitespace ((t (:foreground nil :background ,warning))))
   `(whitespace-trailing ((t (:background nil :foreground ,warning :inverse-video t))))

   `(linum ((t (:foreground ,line-fg :background ,background))))
   `(linum-relative-current-face ((t (:foreground ,white :background ,background))))
   `(line-number ((t (:foreground ,line-fg :background ,background))))
   `(line-number-current-line ((t (:foreground ,white :background ,background))))

   ;; compilation
   `(compilation-info ((t ,(list :foreground -voidtheme-gray-1
                                 :inherit 'unspecified))))
   `(compilation-warning ((t ,(list :foreground -voidtheme-gray-2
                                    :bold t
                                    :inherit 'unspecified))))
   `(compilation-error ((t (:foreground ,error :weight bold ))))
   `(compilation-mode-line-fail ((t ,(list :foreground error
                                           :weight 'bold

                                           :inherit 'unspecified))))
   `(compilation-mode-line-exit ((t ,(list :foreground -voidtheme-gray-1
                                           :weight 'bold
                                           :inherit 'unspecified))))

   ;; hl-line-mode
   `(hl-line ((t (:background ,highlight-line))))
   `(hl-line-face ((t (:background ,highlight-line))))

   ;; rainbow-delimiters (grayscale, cycling lightest to darkest)
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,-voidtheme-gray-1))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,-voidtheme-gray-2))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,-voidtheme-gray-3))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,-voidtheme-gray-4))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,-voidtheme-gray-5))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,-voidtheme-gray-6))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,-voidtheme-gray-7))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,-voidtheme-gray-8))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,-voidtheme-gray-1))))
   `(rainbow-delimiters-depth-10-face ((t (:foreground ,-voidtheme-gray-2))))
   `(rainbow-delimiters-depth-11-face ((t (:foreground ,-voidtheme-gray-3))))
   `(rainbow-delimiters-depth-12-face ((t (:foreground ,-voidtheme-gray-4))))

   ;; which-func
   `(which-func ((t (:inverse-video unspecified
                                    :underline unspecified
                                    :foreground ,text
                                    :weight bold
                                    :box nil))))

   ;; mode-line and powerline
   `(mode-line-buffer-id ((t (:foreground ,background :distant-foreground ,text :weight bold))))
   `(mode-line ((t (:inverse-video unspecified
                                   :underline unspecified
                                   :foreground ,background
                                   :background ,text
                                   :box nil))))
   `(powerline-active1 ((t (:background ,text :foreground ,background))))
   `(powerline-active2 ((t (:background ,text :foreground ,background))))

   `(mode-line-inactive ((t (:inverse-video unspecified
                                            :underline unspecified
                                            :foreground ,text
                                            :background ,-voidtheme-gray-8
                                            :box nil))))
   `(powerline-inactive1 ((t (:background ,background :foreground ,text))))
   `(powerline-inactive2 ((t (:background ,background :foreground ,text))))

   ;; highlight numbers
   `(highlight-numbers-number ((t (:foreground ,numbers))))

   ;; tab-bar-mode
   `(tab-bar ((t (:inherit modeline))))
   `(tab-bar-tab ((t (:foreground ,background :background ,text))))
   `(tab-bar-tab-inactive ((t (:foreground ,text :background ,background))))
   )

  (custom-theme-set-variables
   'void
   '(linum-format " %5i ")
   )
  )

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

;; *****************************************************************************

(provide-theme 'void)

;; Local Variables:
;; no-byte-compile: t
;; End:

(provide 'void-theme)

;;; void-theme.el ends here
