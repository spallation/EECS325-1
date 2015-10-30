(in-package :cs325-user)

(defun position+ (lst &optional (i 0))
  (cond ((null lst) nil)
        (t (cons (+ i (car lst)) (position+ (cdr lst) (1+ i))))))

(defun position+ (lst)
  (do ((l lst (cdr l))
       (i 0 (1+ i))
       (ans nil (cons (+ i (car l)) ans)))
    ((null l) (reverse ans))))

(defun position+ (lst)
  (let ((i -1))
    (mapcar #'(lambda (x)  (+ x (incf i))) lst)))