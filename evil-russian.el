(defun evil-russian/set-global-keys ()
  (define-key key-translation-map (kbd "C-х") [escape])
  (define-key key-translation-map (kbd "C-п") (kbd "C-g"))
  (define-key key-translation-map (kbd "M-й") (kbd "M-q")))

(defun evil-russian/set-evil-keys ()
  (define-key evil-normal-state-map "ф" 'evil-append)
  (define-key evil-normal-state-map "Ф" 'evil-append-line)
  (define-key evil-normal-state-map "с" 'evil-change)
  (define-key evil-normal-state-map "С" 'evil-change-line)
  (define-key evil-normal-state-map "в" 'evil-delete)
  (define-key evil-normal-state-map "В" 'evil-delete-line)
  (define-key evil-normal-state-map "ш" 'evil-insert)
  (define-key evil-normal-state-map "Ш" 'evil-insert-line)
  (define-key evil-normal-state-map "О" 'evil-join)
  (define-key evil-normal-state-map "ь" 'evil-set-marker)
  (define-key evil-normal-state-map "щ" 'evil-open-below)
  (define-key evil-normal-state-map "Щ" 'evil-open-above)
  (define-key evil-normal-state-map "з" 'evil-paste-after)
  (define-key evil-normal-state-map "З" 'evil-paste-before)
  (define-key evil-normal-state-map "й" 'evil-record-macro)
  (define-key evil-normal-state-map "к" 'evil-replace)
  (define-key evil-normal-state-map "К" 'evil-replace-state)
  (define-key evil-normal-state-map "ы" 'evil-substitute)
  (define-key evil-normal-state-map "Ы" 'evil-change-whole-line)
  (define-key evil-normal-state-map "ч" 'evil-delete-char)
  (define-key evil-normal-state-map "Ч" 'evil-delete-backward-char)
  (define-key evil-normal-state-map "н" 'evil-yank)
  (define-key evil-normal-state-map "Н" 'evil-yank-line)
  (define-key evil-normal-state-map "п8" 'what-cursor-position)
  (define-key evil-normal-state-map "пф" 'what-cursor-position)
  (define-key evil-normal-state-map "пш" 'evil-insert-resume)
  (define-key evil-normal-state-map "пО" 'evil-join-whitespace)
  (define-key evil-normal-state-map "пй" 'evil-fill)
  (define-key evil-normal-state-map "пг" 'evil-downcase)
  (define-key evil-normal-state-map "пГ" 'evil-upcase)
  (define-key evil-normal-state-map "па" 'find-file-at-point)
  (define-key evil-normal-state-map "пА" 'evil-find-file-at-point-with-line)
  (define-key evil-normal-state-map "п," 'evil-rot13)
  (define-key evil-normal-state-map "Б" 'evil-shift-left)
  (define-key evil-normal-state-map "Ю" 'evil-shift-right)

  ;; Motion state map
  (define-key evil-motion-state-map "и" 'evil-backward-word-begin)
  (define-key evil-motion-state-map "И" 'evil-backward-WORD-begin)
  (define-key evil-motion-state-map "у" 'evil-forward-word-end)
  (define-key evil-motion-state-map "У" 'evil-forward-WORD-end)
  (define-key evil-motion-state-map "а" 'evil-find-char)
  (define-key evil-motion-state-map "А" 'evil-find-char-backward)
  (define-key evil-motion-state-map "П" 'evil-goto-line)
  (define-key evil-motion-state-map "р" 'evil-backward-char)
  (define-key evil-motion-state-map "Р" 'evil-window-top)

  (define-key evil-motion-state-map "о" 'evil-next-line)
  (define-key evil-motion-state-map "л" 'evil-previous-line)
  (define-key evil-motion-state-map "0" 'evil-beginning-of-line)
  (define-key evil-motion-state-map ";" 'evil-end-of-line)

  (define-key evil-motion-state-map "д" 'evil-forward-char)
  (define-key evil-motion-state-map "Л" 'evil-lookup)
  (define-key evil-motion-state-map "Д" 'evil-window-bottom)
  (define-key evil-motion-state-map "Ь" 'evil-window-middle)
  (define-key evil-motion-state-map "т" 'evil-search-next)
  (define-key evil-motion-state-map "Т" 'evil-search-previous)
  (define-key evil-motion-state-map "е" 'evil-find-char-to)
  (define-key evil-motion-state-map "Е" 'evil-find-char-to-backward)
  (define-key evil-motion-state-map "ц" 'evil-forward-word-begin)
  (define-key evil-motion-state-map "Ц" 'evil-forward-WORD-begin)
  (define-key evil-motion-state-map "пв" 'evil-goto-definition)
  (define-key evil-motion-state-map "пу" 'evil-backward-word-end)
  (define-key evil-motion-state-map "пУ" 'evil-backward-WORD-end)
  (define-key evil-motion-state-map "пп" 'evil-goto-first-line)

  (define-key evil-motion-state-map "по" 'evil-next-visual-line)
  (define-key evil-motion-state-map "пл" 'evil-previous-visual-line)
  (define-key evil-motion-state-map "п0" 'evil-beginning-of-visual-line)
  (define-key evil-motion-state-map "п;" 'evil-end-of-line)

  (define-key evil-motion-state-map "п_" 'evil-last-non-blank)
  (define-key evil-motion-state-map "п:" 'evil-first-non-blank-of-visual-line)
  (define-key evil-motion-state-map "п;" 'evil-end-of-visual-line)
  (define-key evil-motion-state-map "Х" 'evil-backward-paragraph)
  (define-key evil-motion-state-map "Ъ" 'evil-forward-paragraph)
  (define-key evil-motion-state-map (kbd "C-и") 'evil-scroll-page-up)
  (define-key evil-motion-state-map (kbd "C-в") 'evil-scroll-down)
  (define-key evil-motion-state-map (kbd "C-у") 'evil-scroll-line-down)
  (define-key evil-motion-state-map (kbd "C-а") 'evil-scroll-page-down)
  (define-key evil-motion-state-map (kbd "C-щ") 'evil-jump-backward)
  (define-key evil-motion-state-map (kbd "C-н") 'evil-scroll-line-up)
  (define-key evil-motion-state-map "м" 'evil-visual-char)
  (define-key evil-motion-state-map "М" 'evil-visual-line)
  (define-key evil-motion-state-map (kbd "C-м") 'evil-visual-block)
  (define-key evil-motion-state-map "пм" 'evil-visual-restore)

  ;; Text objects (outer)
  (define-key evil-outer-text-objects-map "ц" 'evil-a-word)
  (define-key evil-outer-text-objects-map "Ц" 'evil-a-WORD)
  (define-key evil-outer-text-objects-map "ы" 'evil-a-sentence)
  (define-key evil-outer-text-objects-map "з" 'evil-a-paragraph)
  (define-key evil-outer-text-objects-map "и" 'evil-a-paren)
  (define-key evil-outer-text-objects-map "И" 'evil-a-curly)
  (define-key evil-outer-text-objects-map "Б" 'evil-an-angle)
  (define-key evil-outer-text-objects-map "Ю" 'evil-an-angle)
  (define-key evil-outer-text-objects-map "е" 'evil-a-tag)

  ;; Text object (inner)
  (define-key evil-inner-text-objects-map "ц" 'evil-inner-word)
  (define-key evil-inner-text-objects-map "Ц" 'evil-inner-WORD)
  (define-key evil-inner-text-objects-map "ы" 'evil-inner-sentence)
  (define-key evil-inner-text-objects-map "з" 'evil-inner-paragraph)
  (define-key evil-inner-text-objects-map "и" 'evil-inner-paren)
  (define-key evil-inner-text-objects-map "И" 'evil-inner-curly)
  (define-key evil-inner-text-objects-map "Б" 'evil-inner-angle)
  (define-key evil-inner-text-objects-map "Ю" 'evil-inner-angle)
  (define-key evil-inner-text-objects-map "е" 'evil-inner-tag)

  ;; Visual state map
  (define-key evil-visual-state-map "Ф" 'evil-append)
  (define-key evil-visual-state-map "Ш" 'evil-insert)
  (define-key evil-visual-state-map "щ" 'exchange-point-and-mark)
  (define-key evil-visual-state-map "Щ" 'evil-visual-exchange-corners)
  (define-key evil-visual-state-map "К" 'evil-change)
  (define-key evil-visual-state-map "г" 'evil-downcase)
  (define-key evil-visual-state-map "Г" 'evil-upcase)
  (define-key evil-visual-state-map "ф" evil-outer-text-objects-map)
  (define-key evil-visual-state-map "ш" evil-inner-text-objects-map)

  ;; Operator pending state map
  (define-key evil-operator-state-map "ф" evil-outer-text-objects-map)
  (define-key evil-operator-state-map "ш" evil-inner-text-objects-map))

(defun ice/apply-latex-evil-russian-keymaps ()
  (dolist (mode '(tex-mode latex-mode))
    (spacemacs/set-leader-keys-for-major-mode mode
      "и"   'latex/build
      "л"   'TeX-kill-job               ;; C-c C-k
      "д"   'TeX-recenter-output-buffer ;; C-c C-l
      "ь"   'TeX-insert-macro           ;; C-c C-m
      "м"   'TeX-view                   ;; C-c C-v
      ;; TeX-doc is a very slow function
      "рв"  'TeX-doc
      "чи"  'latex/font-bold
      "чс"  'latex/font-code
      "чу"  'latex/font-emphasis
      "чш"  'latex/font-italic
      "чк"  'latex/font-clear
      "чщ"  'latex/font-oblique
      "час" 'latex/font-small-caps
      "чаа" 'latex/font-sans-serif
      "чак" 'latex/font-serif)
    (when latex-enable-folding
      (spacemacs/set-leader-keys-for-major-mode mode
        "я=" 'TeX-fold-math
        "яи" 'TeX-fold-buffer
        "яу" 'TeX-fold-env
        "яь" 'TeX-fold-macro
        "як" 'TeX-fold-region))
    (spacemacs/declare-prefix-for-mode mode "ьч"  "text/fonts")
    (spacemacs/declare-prefix-for-mode mode "ья"  "fold"))

  ;; Key bindings specific to LaTeX
  (spacemacs/set-leader-keys-for-major-mode 'latex-mode
    "*"   'LaTeX-mark-section      ;; C-c *
    "."   'LaTeX-mark-environment  ;; C-c .
    "с"   'LaTeX-close-environment ;; C-c ]
    "у"   'LaTeX-environment       ;; C-c C-e
    "ш"   'LaTeX-insert-item       ;; C-c C-j
    "ы"   'LaTeX-section           ;; C-c C-s
    "зи"  'preview-buffer
    "зс"  'preview-clearout
    "зв"  'preview-document
    "зу"  'preview-environment
    "за"  'preview-cache-preamble
    "зз"  'preview-at-point
    "зк"  'preview-region
    "зы"  'preview-section
    "чИ"  'latex/font-medium
    "чк"  'latex/font-clear
    "чаф" 'latex/font-calligraphic
    "чат" 'latex/font-normal
    "чаг" 'latex/font-upright)
  (spacemacs/declare-prefix-for-mode 'latex-mode "ьз"  "preview")

  (spacemacs/declare-prefix-for-mode 'latex-mode "ьк"  "reftex")
  (spacemacs/set-leader-keys-for-major-mode 'latex-mode
    "кс"    'reftex-citation
    "кп"    'reftex-grep-document
    "кш"    'reftex-index-selection-or-word
    "кШ"    'reftex-display-index
    "к TAB" 'reftex-index
    "кд"    'reftex-label
    "кз"    'reftex-index-phrase-selection-or-word
    "кЗ"    'reftex-index-visit-phrases-buffer
    "кк"    'reftex-reference
    "кы"    'reftex-search-document
    "ке"    'reftex-toc
    "кЕ"    'reftex-toc-recenter
    "км"    'reftex-view-crossref))

(provide 'evil-russian)
