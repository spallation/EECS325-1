let return:
(defun sum (n)
  (let ((s 0))
    (dotimes (i n s)
             (incf s i))))

list:
'(my 3 "sons") = (list 'my (+ 2 1) "sons")
(cons 'a '(b c d)) = list abcd
car = first
cdr = rest
(setf lst '(a b c d))
(remove (a lst))
(mapcar #' (lambda(x) (+ x 10)) '(1 2 3))
(maplist #' (lambda (x) x) '(a b c)) = ((a b c) (b c) c)
(substitute 'y 'x lst)
(subst 'y 'x lst) for all
(member 'a '((a b) (c d)) :key #'car)
(length '(a b c)) = 3
(subseq '(a b c d) 1 2) = b
(push obj lst)
(pop lst)

nil:
nil = ()

array:
(setf arr (make-array '(2 3)))
(aref arr 0 0)
(setf (aref arr 0 0) 'b)

string: 
(sort "elbow" #'char<)
(string-equal "A" "a") ignore case
(concatenate 'string "a" "b")
(position #\a "fantasia") = 1
(position #\a "fantasia" :from-end t)
(position 'a '((c d) (a b)) :key #'car) = 1

struct:
(defstruct point x y)
(setf p (make-point :x 0 :y 0))

hashtable:
(setf ht (make-hash-table))
(setf (gethash 'color ht) 'red)

function:
(defun mythird (x)
  (car (cdr (cdr x))))

output:
(format t "~A ... ~%" 2)

var:
(defparameter *glob* 99)

iteration:
(do ((i start (+ i 1)))
  ((> i end) 'done)
  (format t "~A" i))

(dolist (obj lst)
        (setf len (+ len 1)))

function:
(apply #'+ '(1 2 3)) = (funcall #'+ 1 2 3)

equal:
eql obj, equal val





