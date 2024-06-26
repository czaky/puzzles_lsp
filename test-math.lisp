;;; Package contains tests for math related puzzle solutions.

(defpackage #:puzzles/math/tests
  (:use #:cl #:puzzles/math)
  (:import-from #:fiveam #:is #:test))
(in-package #:puzzles/math/tests)

(fiveam:in-suite* :puzzles)

(test twice-linear
  (is (= 3 (twice-linear 1)))
  (is (= 22 (twice-linear 10)))
  (is (= 57 (twice-linear 20))))

(test triangle-numbers
  (is (equal '(1 8 27 64 125 216 343 512 729 1000)
             (loop :for n :from 1 to 10 :collect (triangle-numbers n)))))

(test gray-mystery-function
  (is (equal '(0 1 3 2 6 7 5 4 12 13 15)
             (loop :for n :from 0 to 10 :collect (gray-mystery-function n))))
  (is (equal '(0 1 3 2 7 6 4 5 15 14 12)
             (loop :for n :from 0 to 10 :collect (inverse-gray-mystery-function n)))))

(test burner
  (is (equal '(1 346 0) (multiple-value-list (burner 939 3 694)))))


(test digit-power
  (is (= 1  (digit-power 89 1)))
  (is (= -1 (digit-power 92 1)))
  (is (= 2  (digit-power 695 2)))
  (is (= 51 (digit-power 46288 3))))

(test sum-35
  (is (= 23 (sum-35 10)))
  (is (= 78 (sum-35 20)))
  (is (= 9168 (sum-35 200)))
  (is (= 0 (sum-35 -10)))
  (is (= 12815595 (sum-35 7411))))
