(defstruct 3tree data left middle right)

(defun 3tree-clone (tree)
  (if tree
      (make-3tree :data (3tree-data tree)
                :left (3tree-clone (3tree-left tree))
                :middle (3tree-clone (3tree-middle tree))
                :right (3tree-clone (3tree-right tree)))
      nil))

(defun 3tree-member (val tree)
  (cond ((null tree) nil)
        ((eql (3tree-data tree) val) t)
        (t (or (3tree-member val (3tree-left tree)) 
               (3tree-member val (3tree-middle tree))
               (3tree-member val (3tree-right tree))))))