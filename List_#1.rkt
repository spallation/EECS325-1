(defun has-number-p(lst)
  (if (consp lst) 
      (some #'has-number-p lst) 
      (numberp lst)))