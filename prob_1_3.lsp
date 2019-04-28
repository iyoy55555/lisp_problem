;;; prob_1_3
(defvar in 0)
(defun fib1 (n)
  (if (< n 2)
	n
	(+(fib1(- n 1))(fib1(- n 2)))))

(defun fib2 (n a b)
  (if (< n 2)
	(if (= n 0) a b)
	(fib2 (- n 1 ) b (+ a b))))
		  
(trace fib1)
(setq in (read))
(format t "Fab1:~%")
(write (fib1 in))
(format t "~%----------------------~%")
(trace fib2)
(format t "Fab2:~%")
(write (fib2 in 0 1))
(format t "~%")
