;;; Problem1_1
(defvar c 1)
(DEFUN prime(n)
	(setq c 1)
	(loop for x from 2 to (sqrt n)
		if (=(mod n x)0) 
		do (setq c 0) 
	)
	(if (= c 1)
		(format t "is prime~%")
	(format t "is not prime~%"))
)
(prime (read))


