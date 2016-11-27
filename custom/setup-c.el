;; company-c-headers
(use-package company-c-headers
  :init
  (add-to-list 'company-backends 'company-c-headers))

;; hs-minor-mode for folding source code
(add-hook 'c-mode-common-hook 'hs-minor-mode)

;; Debian-8.5 VM c++ headers
(add-to-list 'company-c-headers-path-system "/usr/include/c++/4.9")
(add-to-list 'company-c-headers-path-system "/usr/include/x86_64-linux-gnu/c++/4.9")
(add-to-list 'company-c-headers-path-system "/usr/include/c++/4.9/backward")
(add-to-list 'company-c-headers-path-system "/usr/lib/gcc/x86_64-linux-gnu/4.9/include")
(add-to-list 'company-c-headers-path-system "/usr/local/include")
(add-to-list 'company-c-headers-path-system "/usr/lib/gcc/x86_64-linux-gnu/4.9/include-fixed")
(add-to-list 'company-c-headers-path-system "/usr/include/x86_64-linux-gnu")
(add-to-list 'company-c-headers-path-system "/usr/include")

;; Available C style:
;; “gnu”: The default style for GNU projects
;; “k&r”: What Kernighan and Ritchie, the authors of C used in their book
;; “bsd”: What BSD developers use, aka “Allman style” after Eric Allman.
;; “whitesmith”: Popularized by the examples that came with Whitesmiths C, an early commercial C compiler.
;; “stroustrup”: What Stroustrup, the author of C++ used in his book
;; “ellemtel”: Popular C++ coding standards as defined by “Programming in C++, Rules and Recommendations,” Erik Nyquist and Mats Henricson, Ellemtel
;; “linux”: What the Linux developers use for kernel development
;; “python”: What Python developers use for extension modules
;; “java”: The default style for java-mode (see below)
;; “user”: When you want to define your own style
(setq c-default-style) "linux" ;; set style to "linux"

(use-package cc-mode
  :init
  (define-key c-mode-map  [(tab)] 'company-complete)
  (define-key c++-mode-map  [(tab)] 'company-complete))

(provide 'setup-c)
