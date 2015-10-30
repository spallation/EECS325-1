(defun occurrences (lst)
  (do ((l lst (cdr l))
       (ans nil (let ((pair (assoc (car l) ans)))
                 (cond (pair 
                       (incf (cdr pair))
                       ans)
                      (t (acons (car l) 1 ans))))))
    ((null l) (sort ans #'> :key #'cdr))))

