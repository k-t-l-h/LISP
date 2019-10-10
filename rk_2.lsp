;A\B

;ФУНКЦИОНАЛ
(defun minusf(A B) (remove-if (lambda(x) (member x B) ) A) )

(write (minusf '(A B) '(A C)))

;РЕКУРСИЯ
(defun f(lst1 lst2 res)
    (let ((a (car lst1)))
   	 (if(cdr lst1)
   		 (if
   			 (member a lst2)
   			 (f (cdr lst1) lst2 res)
   			 (f (cdr lst1) lst2 (cons a res))
   		 )
   		 res
   	 )

    )
)

(write (f '(v A) '(A C) ()  ))
