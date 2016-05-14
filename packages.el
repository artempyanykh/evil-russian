;;; packages.el --- Evil-Russian layer packages file for Spacemacs
;;
;; Copyright (c) 2016 Artem Pyanykh
;;
;; Author: Artem Pyanykh <artem.pyanykh@gmail.com>
;; URL: https://github.com/artempyanykh/evil-russian
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `evil-russian-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `evil-russian/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `evil-russian/pre-init-PACKAGE' and/or
;;   `evil-russian/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst evil-russian-packages
  '(evil
    auctex
    helm)
  "The list of Lisp packages required by the evil-russian layer.")

(defun evil-russian/post-init-evil ()
  "Add russian layout keys translations for general evil stuff."

  ;; set global keys
  (define-key key-translation-map (kbd "C-х") [escape])
  (define-key key-translation-map (kbd "C-п") (kbd "C-g"))
  (define-key key-translation-map (kbd "M-й") (kbd "M-q"))
  (define-key key-translation-map (kbd "M-ч") (kbd "M-x"))

  ;; normal state map
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

  (define-key evil-motion-state-map "о" 'evil-next-visual-line)
  (define-key evil-motion-state-map "л" 'evil-previous-visual-line)
  (define-key evil-motion-state-map "0" 'evil-beginning-of-line)
  (define-key evil-motion-state-map "п;" 'evil-end-of-line) ;; to not clash with regular ;

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

  (define-key evil-motion-state-map "п_" 'evil-last-non-blank)
  (define-key evil-motion-state-map "п:" 'evil-first-non-blank-of-visual-line)
  (define-key evil-motion-state-map "Х" 'evil-backward-paragraph)
  (define-key evil-motion-state-map "Ъ" 'evil-forward-paragraph)
  (define-key evil-motion-state-map (kbd "C-ц") 'evil-window-map)
  (define-key evil-motion-state-map (kbd "C-и") 'evil-scroll-page-up)
  (define-key evil-motion-state-map (kbd "C-в") 'evil-scroll-down)
  (define-key evil-motion-state-map (kbd "C-у") 'evil-scroll-line-down)
  (define-key evil-motion-state-map (kbd "C-а") 'evil-scroll-page-down)
  (define-key evil-motion-state-map (kbd "C-щ") 'evil-jump-backward)
  (define-key evil-motion-state-map (kbd "C-н") 'evil-scroll-line-up)
  (define-key evil-motion-state-map "яе" 'evil-scroll-line-to-top)
  (define-key evil-motion-state-map "яя" 'evil-scroll-line-to-center)
  (define-key evil-motion-state-map "яи" 'evil-scroll-line-to-bottom)
  (define-key evil-motion-state-map "м" 'evil-visual-char)
  (define-key evil-motion-state-map "М" 'evil-visual-line)
  (define-key evil-motion-state-map (kbd "C-м") 'evil-visual-block)
  (define-key evil-motion-state-map "пм" 'evil-visual-restore)
  (define-key evil-motion-state-map "яд" 'evil-scroll-column-right)
  (define-key evil-motion-state-map "яр" 'evil-scroll-column-left)
  (define-key evil-motion-state-map "яД" 'evil-scroll-right)
  (define-key evil-motion-state-map "яР" 'evil-scroll-left)

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
  (define-key evil-operator-state-map "ш" evil-inner-text-objects-map)

  ;; Ex-mode
  (define-key evil-normal-state-map (kbd evil-russian-command-key) 'evil-ex)
  (define-key evil-visual-state-map (kbd evil-russian-command-key) 'evil-ex)
  (define-key evil-motion-state-map (kbd evil-russian-command-key) 'evil-ex)

  (evil-ex-define-cmd "у[edit]" 'evil-edit)
  (evil-ex-define-cmd "ц[rite]" 'evil-write)
  (evil-ex-define-cmd "цф[wall]" 'evil-write-all)
  (evil-ex-define-cmd "ыфм[saveas]" 'evil-save)
  (evil-ex-define-cmd "к[read]" 'evil-read)
  (evil-ex-define-cmd "и[buffer]" 'evil-buffer)
  (evil-ex-define-cmd "ит[bnext]" 'evil-next-buffer)
  (evil-ex-define-cmd "из[bprevious]" 'evil-prev-buffer)
  (evil-ex-define-cmd "иТ[bNext]" "bprevious")
  (evil-ex-define-cmd "ыи[sbuffer]" 'evil-split-buffer)
  (evil-ex-define-cmd "ыит[sbnext]" 'evil-split-next-buffer)
  (evil-ex-define-cmd "ыиз[sbprevious]" 'evil-split-prev-buffer)
  (evil-ex-define-cmd "ыиТ[sbNext]" "sbprevious")
  (evil-ex-define-cmd "ды" "buffers")

  (evil-ex-define-cmd "с[change]" 'evil-change)
  (evil-ex-define-cmd "сщ[copy]" 'evil-copy)
  (evil-ex-define-cmd "е" "copy")
  (evil-ex-define-cmd "ь[move]" 'evil-move)
  (evil-ex-define-cmd "в[delete]" 'evil-delete)
  (evil-ex-define-cmd "н[yank]" 'evil-yank)
  (evil-ex-define-cmd "пщ[goto]" 'evil-goto-char)
  (evil-ex-define-cmd "о[join]" 'evil-join)
  (evil-ex-define-cmd "ду[left]" 'evil-align-left)
  (evil-ex-define-cmd "кш[right]" 'evil-align-right)
  (evil-ex-define-cmd "су[center]" 'evil-align-center)
  (evil-ex-define-cmd "ыз[split]" 'evil-window-split)
  (evil-ex-define-cmd "мы[vsplit]" 'evil-window-vsplit)
  (evil-ex-define-cmd "туц" 'evil-window-new)
  (evil-ex-define-cmd "уту[enew]" 'evil-buffer-new)
  (evil-ex-define-cmd "мту[vnew]" 'evil-window-vnew)
  (evil-ex-define-cmd "сдщ[close]" 'evil-window-delete)
  (evil-ex-define-cmd "щт[only]" 'delete-other-windows)
  (evil-ex-define-cmd "й[quit]" 'evil-quit)
  (evil-ex-define-cmd "цй" 'evil-save-and-close)
  (evil-ex-define-cmd "йгшеф[quitall]" 'evil-quit-all)
  (evil-ex-define-cmd "йф[qall]" "quitall")
  (evil-ex-define-cmd "сй[cquit]" 'evil-quit-all-with-error-code)
  (evil-ex-define-cmd "цйф[wqall]" 'evil-save-and-quit)
  (evil-ex-define-cmd "чф[xall]" "wqall")
  (evil-ex-define-cmd "ч[xit]" 'evil-save-modified-and-close)
  (evil-ex-define-cmd "учш[exit]" 'evil-save-modified-and-close)
  (evil-ex-define-cmd "ив[bdelete]" 'evil-delete-buffer)
  (evil-ex-define-cmd "иц[bwipeout]" 'evil-delete-buffer)
  (evil-ex-define-cmd "п[global]" 'evil-ex-global)
  (evil-ex-define-cmd "м[vglobal]" 'evil-ex-global-inverted)
  (evil-ex-define-cmd "тщць[normal]" 'evil-ex-normal)
  (evil-ex-define-cmd "ы[substitute]" 'evil-ex-substitute)
  (evil-ex-define-cmd "ог[jumps]" 'evil-show-jumps)
  (evil-ex-define-cmd "тщр[nohlsearch]" 'evil-ex-nohighlight)
  (evil-ex-define-cmd "а[file]" 'evil-show-file-info)
  (evil-ex-define-cmd "Б" 'evil-shift-left)
  (evil-ex-define-cmd "Ю" 'evil-shift-right)
  (evil-ex-define-cmd "ьфл[make]" 'evil-make)
  (evil-ex-define-cmd "сс" 'evil-goto-error)
  (evil-ex-define-cmd "сашк[cfirst]" 'first-error)
  (evil-ex-define-cmd "ск[crewind]" 'first-error)
  (evil-ex-define-cmd "ст[cnext]" 'next-error)
  (evil-ex-define-cmd "сз[cprevious]" 'previous-error)
  (evil-ex-define-cmd "ыщк[sort]" 'evil-ex-sort)
  (evil-ex-define-cmd "куы[resize]" 'evil-ex-resize)

  ;; Undo
  (define-key evil-normal-state-map "г" 'undo)
  (define-key evil-normal-state-map (kbd "C-к") 'redo)

  ;; Window map
  (define-key evil-window-map "и" 'evil-window-bottom-right)
  (define-key evil-window-map "с" 'evil-window-delete)
  (define-key evil-window-map "р" 'evil-window-left)
  (define-key evil-window-map "Р" 'evil-window-move-far-left)
  (define-key evil-window-map "о" 'evil-window-down)
  (define-key evil-window-map "О" 'evil-window-move-very-bottom)
  (define-key evil-window-map "л" 'evil-window-up)
  (define-key evil-window-map "Л" 'evil-window-move-very-top)
  (define-key evil-window-map "д" 'evil-window-right)
  (define-key evil-window-map "Д" 'evil-window-move-far-right)
  (define-key evil-window-map "т" 'evil-window-new)
  (define-key evil-window-map "щ" 'delete-other-windows)
  (define-key evil-window-map "з" 'evil-window-mru)
  (define-key evil-window-map "к" 'evil-window-rotate-downwards)
  (define-key evil-window-map "К" 'evil-window-rotate-upwards)
  (define-key evil-window-map "ы" 'evil-window-split)
  (define-key evil-window-map "Ы" 'evil-window-split)
  (define-key evil-window-map "е" 'evil-window-top-left)
  (define-key evil-window-map "м" 'evil-window-vsplit)
  (define-key evil-window-map "ц" 'evil-window-next)
  (define-key evil-window-map "Ц" 'evil-window-prev)
  (define-key evil-window-map "Б" 'evil-window-decrease-width)
  (define-key evil-window-map "Ю" 'evil-window-increase-width)
  (define-key evil-window-map (kbd "C-и") 'evil-window-bottom-right)
  (define-key evil-window-map (kbd "C-с") 'evil-window-delete)
  (define-key evil-window-map (kbd "C-S-р") 'evil-window-move-far-left)
  (define-key evil-window-map (kbd "C-S-о") 'evil-window-move-very-bottom)
  (define-key evil-window-map (kbd "C-S-л") 'evil-window-move-very-top)
  (define-key evil-window-map (kbd "C-S-д") 'evil-window-move-far-right)
  (define-key evil-window-map (kbd "C-т") 'evil-window-new)
  (define-key evil-window-map (kbd "C-щ") 'delete-other-windows)
  (define-key evil-window-map (kbd "C-з") 'evil-window-mru)
  (define-key evil-window-map (kbd "C-у") 'evil-window-rotate-downwards)
  (define-key evil-window-map (kbd "C-S-у") 'evil-window-rotate-upwards)
  (define-key evil-window-map (kbd "C-ы") 'evil-window-split)
  (define-key evil-window-map (kbd "C-S-ы") 'evil-window-split)
  (define-key evil-window-map (kbd "C-е") 'evil-window-top-left)
  (define-key evil-window-map (kbd "C-м") 'evil-window-vsplit)
  (define-key evil-window-map (kbd "C-ц") 'evil-window-next)
  (define-key evil-window-map (kbd "C-S-Ц") 'evil-window-prev)
  (define-key evil-window-map (kbd "C-а") 'ffap-other-window)

  ;; Insert state
  ;; TODO
  )

(defun evil-russian/post-init-auctex ()
  "Add russian layout keys translations for latex layer."

  ;; tex or latex
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

(defun evil-russian/post-init-helm ()
  "Add russian layout keys translation for Helm buffers."

  (defun evil-russian//helm-hjkl-navigation (&optional arg)
    "Set navigation in helm on `олрд'.
ARG non nil means that the editing style is `vim'."
    (cond
     (arg
      ;; better navigation on homerow
      ;; rebind `describe-key' for convenience
      (define-key helm-map (kbd "C-о") 'helm-next-line)
      (define-key helm-map (kbd "C-л") 'helm-previous-line)
      (define-key helm-map (kbd "C-р") 'helm-next-source)
      (define-key helm-map (kbd "C-S-р") 'describe-key)
      (define-key helm-map (kbd "C-д") (kbd "RET"))
      (dolist (keymap (list helm-find-files-map helm-read-file-map))
        (define-key keymap (kbd "C-д") 'helm-execute-persistent-action)
        (define-key keymap (kbd "C-р") 'helm-find-files-up-one-level)
        (define-key keymap (kbd "C-S-р") 'describe-key)))
     (t
      (define-key helm-map (kbd "C-о") 'helm-execute-persistent-action)
      (define-key helm-map (kbd "C-л") 'helm-delete-minibuffer-contents)
      (define-key helm-map (kbd "C-р") nil)
      (define-key helm-map (kbd "C-д") 'helm-recenter-top-bottom-other-window))))

  (use-package helm
    :config
    (evil-russian//helm-hjkl-navigation (member dotspacemacs-editing-style '(vim hybrid)))))
;;; packages.el ends here
