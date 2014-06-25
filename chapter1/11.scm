(define (f n)
 (cond ((< n 3) n)
       (else (+ 
                (+ 
                    (f (- n 1))
                    (* 2 (f (- n 2))))
                (* 3 (f (- n 3)))
             )))
)

(f 6)


(define (g n)
    (g-iter 2 2 0 n))

(define (g-iter a b c n)
    (cond ((< n 3) n)
          ((= n 3) (+ a b c))
          ((> n 3) (g-iter (+ a b c) (* 2 a) (* (/ b 2) 3) (- n 1)))))

(g 6)
