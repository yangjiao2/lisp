
(defun contains (A L)
	(cond
		((null L) nil)
		((atom (car L))(cond
			((eq A (car L)) t)
			(t (contains A (cdr L))))
		)
		(t (contains A (car L)))
	)
)

(defun insert-q (O L)
	(cond
		((null L) (cons O nil))
		((listp O)(cond
        	((eq (cdr L) nil)(cons (car L) (insert-q  O  (cdr L))))
    		(t (cons (car L) (insert-q O (cdr L))))
    		)
		)
        ((atom O) (cond
        	((eq (cdr L) nil)(cons (car L) (insert-q  O  (cdr L))))
    		(t (cons (car L) (insert-q O (cdr L))))
    		)
    	)
    )
)

(defun listlistmatch (LA LB)
        (cond
                ((null LA) t)
                ((null LB) nil)
                ((eq (car LA)(car LB)) (listlistmatch (cdr LA)(cdr LB)))
                (t nil)
        )
)

(defun sub-pattern(PAT STR)
        (cond
                ((null PAT) nil)
                ((null STR) nil)
                ((listlistmatch PAT STR) STR)
                (t (sub-pattern PAT (cdr STR)))
        )
)

; 
(defun mapping(L VAL)
        (cond
        		((null L) nil)
                ((listp (car L))
                        (cond
                                ((< (car (car L)) VAL) (cons (car (cdr (car L))) (mapping (cdr L) VAL)))
                                (t (mapping (cdr L) VAL))
                                
                		)
                )
                (t nil)
        )
)




(defun first-atom(L)
        (cond
                ((atom (car L)) (car L))
                (t (first-atom (car L)))m
        )
)


(defun rest-list(L)
        (cond
        		((null L) nil)
                ((atom (car L)) (cdr L))
                ((listp (car L)) (cond
                	((atom (car (car  L))) (cond
                		((null (cdr (car L))) (cdr L))
                		(t (cons (rest-list (car L)) (cdr L)))
                		)
                	)
                	(t (cons (rest-list (car L)) (cdr L)))
                	) 
        		)
        )
)





(defun find-all(A L)
	(cond
		((null L) nil)
		((listp L) (cond
		((eq (first-atom L) A)(cons (first-atom (rest-list L)) (find-all A (rest-list L)))) 
			;(cond
			;((symbolp (first-atom (rest-list L))) (cons (first-atom (rest-list L)) (find-all A (rest-list L))))
			(t (find-all A (rest-list L)))
			;)
		;)
			)
		)
		(t (find-all A (rest-list L)))
	)
)


(defun occ(L A)
	(cond
		((null L) 0)
		((listp (car L)) (+ (occ (car L) A) (occ (cdr L) A)))
		((atom (car L)) (cond
			((eq (car L) A) (+ 1 (occ (rest-list L) A)))
			(t (+ 0 (occ (rest-list L) A)))
			)
		)

	)
)


(defun total-reverse(L)
	(cond
		((null L) nil)
		((listp L)(insert-q (total-reverse (car L)) (total-reverse (cdr L))))
		((atom L) L)
	)
)

; (load "/Users/yangjiao/Desktop/hello.lisp")
