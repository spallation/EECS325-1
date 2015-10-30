Code Critiques for cs325

Before resubmitting any code, be sure you've addressed all critiques shown below, either by changing your code, or including comments explaining why certain critiques don't apply. Disagreement and discussion about critiques is welcomed. Ignoring critiques is not.

Submit new code for Graham 2: Basic Lisp

Status: Almost done


(defun greater (x y)
  (if (> x y) x y))
Only resubmit code that needed fixing.

(defun has-list-p (lst)
  (cond
    ((null lst) nil)
    ((listp (car lst)) t)
    (t (has-list-p (cdr lst)))))
OK



(defun print-dots (x)
  (cond ((<= x 0) nil)
        (t (format t ".") (print-dots (1- x)))))

(defun print-dots (x)
  (do ((i 1 (1+ i)))
       ((> i x))
       (format t ".")))


(defun get-a-count (lst)
  (do ((ans 0 (if (eql (car l) 'a) (1+ ans) ans))
       (l lst (cdr l)))
    ((null l) ans)))
OK


(defun get-a-count (lst)
  (cond
    ((null lst) 0)
    ((eql 'a (car lst)) (1+ (get-a-count (cdr lst))))
    (t (get-a-count (cdr lst)))))
OK



(defun summit (lst)
  (apply #'+ (remove nil lst)))
OK
reason: remove function won't modify the input, so it doesn't work
OK
(defun summit (lst)
  (if (null lst)
      0
      (let ((x (car lst)))
        (if (null x)
            (summit (cdr lst))
            (+ x (summit (cdr lst)))))))
OK
reason: The recursive function doesn't have a base case and will not termination even if it reaches (cdr lst) is empty, resulting a stack over-flow 
OK

