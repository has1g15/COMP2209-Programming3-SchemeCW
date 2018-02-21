;;; Coursework 1
;;; Question 2 
;;; Name: Hannah Short Email: has1g15@soton.ac.uk

;;; solution: 

(define remove-alist-all
   (lambda (Sexp alist)
      (cond ((null? alist) '())
      ((equal? (caar alist) Sexp) (remove-alist-all Sexp (cdr alist)))
      (else (cons (car alist) (remove-alist-all Sexp (cdr alist)))))))

;;; The remove-alist-all function takes an S-expression and an association
;;; list as input and removes all the pairs from the list with the 
;;; S-expression as the car of the pairs in the list 
;;; The base case checks the list for emptiness otherwise the inductive 
;;; case creates a list with all the pairs containing the S-expression as
;;; the car removed 