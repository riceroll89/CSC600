#lang scheme
(define (sum lst)
  (if (null? lst) 0
    (+ (car lst) (sum (cdr lst)))))
(define (mean lst)
  (/ (sum lst) (length lst)))
(define (sum-squares lst)
  (if (empty? lst)
      0
      (+ (* (car lst) (car lst))
         (sum-squares (cdr lst)))))
(define (sigma lst)
  (sqrt (- (/ (sum-squares lst) (length lst))
           (* (mean lst) (mean lst)))))

(define line (lambda (x)
  (if (= x 1) (display "*")
      (and (line (- x 1)) (display "*")))))

(define (histogram lst)
  (if (= 1 (length lst))
      (line (car lst))
      (and (and (line (car lst)) (newline))
           (histogram (cdr lst)))))