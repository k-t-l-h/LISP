;1. уменьшить все аргументы на 10

(defun minusten(lst)
  ( mapcar #'(lambda(check) (- check 10) ) lst
  )
)

(write (minusten '(1 2 3 4)))

;2. вернуть первый подсписок

(defun sublist(lst)
  (if (listp (car lst)) (car lst) (sublist(cdr lst)) )
)

(write (sublist '(1 2 (3 4))))

;3. декартово произведение множеств

(defun dec(lstx lsty)
  (mapcar #'(lambda (x)
    (
    mapcar #'(lambda (y) (list x y)) lsty
      )
      ) lstx)
)


(write (dec '(A B) '(B A)))
