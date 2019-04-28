(defun list_left (lst a)
	(loop for i from 1 to (/ (length lst) 2)
         do (setq a (cons (car lst) a))
	 do (setq lst (cdr lst))
	)
	;(setq a (reverse(a)))
	(return-from list_left a))

(defun list_right (lst)
	(loop for i from 1 to (/ (length lst) 2)
		do(setq lst (cdr lst))
	)
	(return-from list_right lst))

(defun mymerge (lst_l lst_r)
	(if (not lst_l) lst_r
	(if (not lst_r) lst_l
	(if (< (car lst_l) (car lst_r)) (cons (car lst_l) (mymerge (cdr lst_l) lst_r)) (cons (car lst_r) (mymerge (cdr lst_r) lst_l))))))

(defun mergesort (lst)
	(if (= (length lst) 1)
	lst
	(mymerge (mergesort (list_left lst '())) (mergesort (list_right lst )))))

(let ((n (read)) (numbers))
 (setf numbers
  (do ((i 0 (+ i 1))
(tmp nil)) ((>= i n)
     (reverse tmp))
    (setf tmp (cons (read) tmp))))
(format t "~{~A ~}~%" (mergesort numbers)))
		
