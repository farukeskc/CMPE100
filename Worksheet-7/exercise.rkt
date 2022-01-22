;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercise) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
(define (twice img)
  (beside img img))

(twice (circle 20 "solid" "black"))







(define (ntuple img n)
  (cond
    ((< n 2) img)
    (else (above img (ntuple img (- n 1))))))

(ntuple (circle 20 "solid" "black") 3)







(define (myPower x n)
  (cond
    ((< n 1) 1)
    (else (* x (myPower x (- n 1))))))

(myPower 25 0)



(define (f x)
  (cond
    ((<= x 0) "undefined")
    ((= x 1) x)
    (else (* (- x 1) (f (- x 1))))
    )
  )

(f 3)