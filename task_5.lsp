;1. Определение списка-полиндрома

(defun poly(lst)

  (let (( B (reverse lst)))
  (equal lst B))

)

(write (poly '(A B A)))

;7. Умножение всех аргументов на заданное число
(defun mltply(lst a)
  (mapcar  #'(lambda(check) (* a check)) lst)
)

(write (mltply '(1 2 3 4) 2))

;8 Напишите функцию, select-between, которая из списка-аргумента,
;содежащего только числа, выбирает только те, которые расположены
;между двумя указанными границами-аргументами и возвращает их в виде списка

(defun select-between(lst a b)
(
  remove-if #'(lambda(check) (or (< check a) (> check b))) lst
)
)

(write (select-between '(1 2 3 4) 2 5))
