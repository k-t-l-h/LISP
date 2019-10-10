;1) Вычислить n!!, где n - кол-во чисел в одноуровневом смешанном списке
;n!! - если n четное - 2*4*6*...*n
;Если n нечетное - 1*3*5*...*n

(defun funcf (n)
    (cond
        ((> n 3) (* n (funcf (- n 2))))
        (t n)
    )
)

(defun num_count(a count)
    (cond
        ((null (car a)) count)
        ((numberp (car a)) (num_count (cdr a) (+ count 1)))
        (t (num_count (cdr a) count))
    )
)

(defun getnn(lst) ( funcf (num_count lst 0)))


(write (getnn '(1 4 A)))

;2) Есть два смешанных множества,
; оставить в обоих только числа и вычислить их объединение

(defun only-num(A) (remove-if (lambda(x) ( not (numberp x)) ) A ))

(defun AB(A B) (remove-if (lambda(x) (member x (only-num B))) ( only-num A)))

(write (AB '(1 4 A) '(1 2)))
