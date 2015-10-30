(defun longest-path (start dest net)
  (let ((ans (dfs start dest (list start) net)))
    (cond ((> (length ans) 1) ans)
          ((eql start dest) (list start))
          (t nil))))
Question with (assert-equal '(a) (longest-path 'a 'a '((a b) (b c)))):
If there is no round-trip from a to a, according to the description, should we output nil?
I don't know how to explain this test case.

(defun dfs (now dest listnow net)
  (cond ((and (eql now dest) (not (null (cdr listnow)))) 
         (reverse listnow))
        (t (do ((next (adjacent now net) (cdr next))
                (ans nil (if (or (eql (car next) dest) (not (member (car next) listnow))) 
                             (let ((ret (dfs (car next) dest (cons (car next) listnow) net)))
                               (if (> (length ans) (length ret))
                                   ans
                                   ret))
                             ans)))
             ((null next) ans)))))
(defun adjacent (now net)
  (cdr (assoc now net)))