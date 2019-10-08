;2. Написать функцию, вычисляющую катет по заданной гипотенузе
;и другому катету прямоугольника, и составить диаграмму ее вычисления.

(defun find-h(cath1 cath2)
  (sqrt ( + (* cath1 cath1) (* cath2 cath2)))
)

(defun find-c(hyp cath1)
  (sqrt (- (* hyp hyp) (* cath1 cath1)))
)

;3. Написать функцию, вычисляющую объем параллепипида по 3-м его сторонам

(defun space(side1 side2 side3) (* side1 side2 side3))

;5. Написать функцию longer_then от двух списков-аргументов, возвращающую
; T, если первый аргумент больше

(defun len(lst)
  (if(null lst) 0
    (+ (len (cdr lst)) 1))
)

(defun longer_then(lst1 lst2)
    (> (len lst1) (len lst2))
    )


(write (longer_then '(A B C) '(A В С)))


;7 Написать функцию, переводящую температуру из Фаренгейта в Цельсий

(defun f-to-c(temp)
(/ (* 5 (- temp 320)) 9)
)

(defun c-to-f(temp)
(+ (* 9/5 c) 32)
)
