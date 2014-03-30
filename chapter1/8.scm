(define (cuberoot-iter guess x)
    (if (good-enough? guess x)
        guess
        (cuberoot-iter 
            (improve guess x)
            x))) 


(define (good-enough? guess x)
    (< 
        (abs 
            (- 
                (* guess guess guess)
                x)) 
        0.001))


(define (improve guess x)
    (/ 
        (+ (/ x (* guess guess)) (* 2 guess))
        3))


(define (cuberoot x)
    (cuberoot-iter 1.0 x))


(cuberoot 27)
