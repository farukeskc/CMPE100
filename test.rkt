;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname test) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
(define (sumv2 alon0)
(local (;; accumulator is the sum of the numbers that preceded
        ;; those in alon on alon0
       (define (sum-a alon accumulato)
       (cond
       [(empty? alon) accumulator]
       [else (sum-a (rest alon) (+ (first alon) accumulator))])))
    (sum-a alon0 0)))

(sumv2 (list 1 2 3 4 5)) ;alon0 = (list 1 2 3 4 5)