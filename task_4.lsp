;3. Вернуть последний элемент списка

;1 версия

(defun last1(lst) (last lst))

;2 версия
(defun last2(lst)
  (if(null (cdr lst)) lst (last2( cdr lst)))
)

(write (last2 '(3.5 3 4)))

;4. Вернуть список без последнего элемента
(defun no-end(lst) ( reverse (cdr (reverse lst))) )

;5. Написать простой вариант игры в кости

(defun seven_eleven(a b) (or (equal (+ a b) 7) (equal (+ a b) 11) ) )

(defun second_chance(a b) (or (and (equal a 1) (equal a 1))   (and (equal a 6) (equal a 6))) )

(defun turn() (list (+ (random 5) 1) (+ (random 5) 1)) )
