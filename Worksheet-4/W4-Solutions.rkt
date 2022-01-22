;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname W4-solution) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
;----------------Question 1-----------------------------
(check-expect (fromCeltoFahr 50) 10)


(define (fromCeltoFahr celsius)
  (/ (* (- celsius 32) 5) 9))

(fromCeltoFahr 120)


;----------------Question 2-----------------------------
(check-expect (areaOfRect 5 4) 10)

(define (areaOfRect width height)
  (/ (* width height) 2))

(areaOfRect 10 10)


;----------------Question 3-----------------------------

(define (drawRect width height)
  (rectangle width height "solid" "purple"))

(drawRect 50 50)


;----------------Question 4-----------------------------

;(check-expect (calculateBMI 75 180) 23.148)

(define (calculateBMI weight height)
  (/ weight (expt (/ height 100) 2)))

(calculateBMI 50 170)

;----------------Question 5-----------------------------


(define (animation_rectangle x)
  (place-image (rectangle 80 80 "solid" "red") (+ 40 (* 5 x)) (- 500(+ 40 (* 5 x))) (empty-scene 500 500)))

(animate animation_rectangle)