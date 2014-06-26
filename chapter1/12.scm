(define (f row col)
    (cond ((< row 1) 0)
          ((< col 1) 0)
          ((= col 1) 1)
          ((= col row) 1)
          (else (+ (f (- row 1) col) (f (- row 1) (- col 1))))))

(f 2 1)
(f 4 3)
