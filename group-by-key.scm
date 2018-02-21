;;; Coursework 1
;;; Question 3
;;; Name: Hannah Short Email: has1g15@soton.ac.uk

(define assoc-all
   (lambda (Sexp alist)
      (cond ((null? alist) '())
      ((equal? Sexp (caar alist)) (cons (cdar alist) (assoc-all Sexp (cdr alist))))
      (else (assoc-all Sexp (cdr alist))))))

(define remove-alist-all
   (lambda (Sexp alist)
      (cond ((null? alist) '())
      ((equal? (caar alist) Sexp) (remove-alist-all Sexp (cdr alist)))
      (else (cons (car alist) (remove-alist-all Sexp (cdr alist)))))))

;;; solution:

(define group-by-key
   (lambda (alist)
      (cond ((null? alist) '())
      (cons (cons (cons (caar alist) (assoc-all (caar alist) alist)) (group-by-key (remove-alist-all (caar alist) alist)))))))

;;; The group-by-key function takes an association list as an argument and constructs a list with all the values associated 
;;; with each key grouped in a list
;;; The base case checks for the instance of an empty list otherwise the inductive case constructs a new list by using the 
;;; assoc-all function to obtain all the values associated with the key in a pair and adding them to the new list and then 
;;; recalling group-by-key with the remove-alist-all function to remove all pairs with the key in from the current list 