(defun my-copy-list(lst)
  (reduce #'cons lst :from-end t :initial-value nil))

(defun my-reverse(lst)
  (reduce #'(lambda (x y) (cons y x)) lst :initial-value nil))

(defun hash-table->alist (ht)
  (let ((ans nil))
    (maphash #'(lambda (k v) (push (cons k v) ans)) ht) 
    ans))

(defun alist->hash-table (alist)
  (let ((ht (make-hash-table)))
    (do ((l alist (cdr l)))
      ((null l) ht)
      (setf (gethash (car (car l)) ht) (cdr (car l))))))


