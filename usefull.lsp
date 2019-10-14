;многоуровневый список в одноуровневый

(defun into_one (lst rst)
	(cond ((null lst) rst)
          ((atom lst) (cons lst rst))
		  (t (into_one (car lst) (into_one (cdr lst) rst) ))
    )
)

(write (into_one '(a b c (1 ((v)) sd (1 2 3)) 2) nil))


;удалить i-тый элемент

(defun remove-i (i lst)
(setq i (1+ i)) ;setq НЕ убирать и не менять на set
(remove-if #'(lambda (x) (zerop (setq i (1- i)))) lst)
)

(write (remove-i 1 '(A B C) ))

;вставить в список на i-ое место (другой список)

(defun insert(ARRAY VALUE PLACE)
  ( cond ( (null ARRAY) (append VALUE NIL) )
  ( (> n 0) (cons (car ARRAY) (insert (cdr ARRAY) VALUE (- n 1))) )
  ( T (append VALUE ARRAY))
  ))

;(атом)
  (defun insert_atom(ARRAY VALUE PLACE)
    ( cond ( (null ARRAY) (cons VALUE NIL) )
    ( (> n 0) (cons (car ARRAY) (insert (cdr ARRAY) VALUE (- n 1))) )
    ( T (cons VALUE ARRAY))
    ))

;определить длину
(defun len(lst)
  (if(null lst) 0
    (+ (len (cdr lst)) 1))
)

;вернуть n-ый элемент
(defun getn(ARRAY PLACE)
  ( cond ( (null ARRAY) Nil )
  ( (> PLACE 0) (getn (cdr ARRAY) (- PLACE 1)))
  (  T (car ARRAY))
      )
  )


(write (getn  '(A B C) 1  ))
