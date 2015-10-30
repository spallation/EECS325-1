(defun rotate-array(arr)
  (let* ((n (array-dimension arr 0))
         (arr2 (make-array (list n n))))
    (dotimes (i n)
             (dotimes (j n)
                      (setf (aref arr2 i j)
                            (aref arr (- (1- n) j) i)))) 
    arr2))

(defun nrotate-array(arr)
  (let ((n (array-dimension arr 0)))
    (dotimes (i (ceiling n 2))
             (dotimes (j (floor n 2))
        (rotatef (aref arr j (- n (1+ i)))
                 (aref arr i j)
                 (aref arr (- n (1+ j)) i)
                 (aref arr (- n (1+ i)) (- n(1+ j))))))) arr)


