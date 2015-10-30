(defun stable-set-difference(lst1 lst2)
    (do ((lst (reverse lst1) (rest lst))
         (res nil (if (member (car lst) lst2) res (cons (car lst) res))))
      ((null lst) res)))

(defun stable-union(lst1 lst2)
  (append lst1 (stable-set-difference lst2 lst1)))

(defun stable-intersection (lst1 lst2)
    (do ((lst (reverse lst1) (rest lst))
         (res nil (if (member (car lst) lst2) (cons (car lst) res) res)))
      ((null lst) res)))