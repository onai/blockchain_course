#lang racket

(require pollen/tag)
(provide (all-defined-out))
(define headline (default-tag-function 'h2))
(define items (default-tag-function 'ul))
(define item (default-tag-function 'li 'p))
(define (title str) (string-append "## " str))

; chapter-specific stuff
(define chapter-title 
  (default-tag-function 'h2))

(define chapter-keywords
  (default-tag-function 'ul #:class "chapter-kws"))

(define chapter-keyword
  (default-tag-function 'li))

(define section
  (default-tag-function 'section))

(define para
  (default-tag-function 'p))

; tufte-styling
(define margin-note
  (default-tag-function 'span #:class "marginnote"))

; mathjax
(define ($ . xs)
  `(mathjax ,(apply string-append `("$" ,@xs "$"))))

(define ($$ . xs)
  `(mathjax ,(apply string-append `("$$" ,@xs "$$"))))
