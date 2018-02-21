;;; Coursework 1
;;; Question 1
;;; Name: Hannah Short Email: has1g15@soton.ac.uk

;;; solution:

(define assoc-all
   (lambda (Sexp alist)
      (cond ((null? alist) '())
      ((equal? Sexp (caar alist)) (cons (cdar alist) (assoc-all Sexp (cdr alist))))
      (else (assoc-all Sexp (cdr alist))))))

;;; The function assoc-all takes an S-expression and an association list as input and
;;; returns all the values associated with the expression 
;;; The base case checks if the list is empty otherwise the inductive case checks if
;;; the caar of the current list matches the expression, returns the value and calls
;;; the function again 