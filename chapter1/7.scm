(define (sqrt-iter lastguess x)
    (let ((guess (improve lastguess x)))
    (if (good-enough? lastguess guess)
        guess
        (sqrt-iter (improve guess x)
                   x))))

(define (improve guess x)
    (average guess (/ x guess)))


(define (average x y)
    (/ (+ x y) 2))

(define (good-enough? lastguess guess)
    (< 
        (abs (/ (- lastguess guess) lastguess)) 0.001))

(define (sqrt x) 
    (sqrt-iter 1.0 x))

(sqrt 9)
