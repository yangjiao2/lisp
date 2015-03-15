
(defun find-all(A L)
	(cond
		((null L) nil)
		((eq (first-atom L) A) (cond
			((symbolp (first-atom (rest-list L))) (cons (first-atom (rest-list L)) (find-all A (rest-list L))))
			(t (find-all A (rest-list L)))
			)
		)
		(t (find-all A (rest-list L)))
	)
)

(defun occ(L A)
		
		(cond
				((null L) 0)
				((eq (first-atom (car L)) A) (+ 1 (occ (rest-list L) A)))
				(t (occ (rest-list L) A))
		)
)


(defun total-reverse(L)
		(cond
				((null L) nil)
				((listp L) (cons (total-reverse(cdr L)) (total-reverse(car L))))
				((atom L) L)
		)
)

(defun rest-list(L)
        (cond
        		((null L) nil)
                ((atom (car L)) (cdr L))
                ((listp (car L)) (cons (rest-list (car L)) (cdr L)))
        )

)






		(cond
				((null L) nil)
				((atom L) L )
				((listp L)(cond
					((null (cdr L)) (total-reverse (car L)))
					((atom (car (cdr L))) (cons (car (cdr L)) (total-reverse (car L))))
					;((atom (cdr L)) (cons (cdr L) (cons (car L) nil )))
					(t (cons (total-reverse (cdr L)) (cons (total-reverse(car L)) nil)))
					)
				)
				
;				((atom (car L)) (cond
;					((null (car L)) ())
;					((cons (total-reverse (cdr L))(cons (car L) nil )))
;				((listp (car L)) (cons (total-reverse(cdr L)) (total-reverse(car L))))				
		)
