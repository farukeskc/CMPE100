;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname solution-7) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
;/////////////////////////////QUESTION 1//////////////////////////////////


;data defination: number
;purpose: to count digit of given number
;contract: countDigits number -> number
;example:
 (check-expect (countDigits 123) 3)
 (check-expect (countDigits 13) 2)
 (check-expect (countDigits 1) 1)
  
;template:
;function:
  
(define (countDigits num)
  (cond
    ((< (/ num 10) 1) 1)
    (else (+ 1 (countDigits (/ num 10))))))

;test:
(countDigits 123456789)


;/////////////////////////////QUESTION 2//////////////////////////////////


;data defination: number
;purpose: to sum digits of given number
;contract: sumDigits number -> number
;example:
(check-expect (sumDigits 123) 6)
(check-expect (sumDigits 13) 4)
(check-expect (sumDigits 1) 1)


;template:
;function:

(define (sumDigits num)
  (cond
    [(< (/ num 10) 1) num]
    [else (+ (modulo num 10) (sumDigits (floor (/ num 10))))]))

;test:
(sumDigits 123456789)



;/////////////////////////////QUESTION 3//////////////////////////////////

;data defination: number
;purpose: to sum of all given number's proper divisors
;contract: findProperDivisor number -> number
;example:
;(check-expect (findProperDivisor 20) 22)
;(check-expect (findProperDivisor 36) 55)
;(check-expect (findProperDivisor 1) 1)

;template:
;function:
(define x 36)
(define (findProperDivisor num)
  (cond
    [(= num 1) 1]
    [(and (= (modulo x num) 0) (not (= num x))) (+ num (findProperDivisor (- num 1)))]
    [else (findProperDivisor (- num 1))]))

(findProperDivisor x)