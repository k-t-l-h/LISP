;1 Первое четное число не меньше аргумента

(defun notless(num)
  ( if(evenp num) num (+ num 1))

  )

(write (notless 2))

;2 Число того же знака, но на единицу больше

(defun plusone(num)
(if(< num 0) (- num 1) (+ num 1))
)

;3. Принимает два числа и возвращает их в порядке возрастания

(defun srt(a b)
( if(< a b) (list a b) (list b a))
)

(write (srt 13 4))

;4 + 8. Принимает 3 числа, возвращает T, если первое расположено между двумя другими
(defun mid(a b c)
( or (and (< a b) (> a c)) (and (> a b) (< a c)) )
)
