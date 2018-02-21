;;; Coursework 1
;;; Question 4
;;; Name: Hannah Short Email: has1g15@soton.ac.uk

;;; solution:

(define map-values
   (lambda (alist f)
      (cond ((null? alist) '())
      (else (cons (cons (caar alist) (f (cdar alist))) (map-values (cdr alist) f))))))

;;; The function map-values takes an association list and a function as arguments 
;;; and applies the function to the values of the pair in the association list 
;;; The base case checks if the list is empty otherwise the inductive case makes 
;;; a new list with the values from the function application