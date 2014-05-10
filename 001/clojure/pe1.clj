;; If we list all the natural numbers below 10 that are multiples of 3 or 5,
;; we get 3, 5, 6 and 9. The sum of these multiples is 23
;;
;; Find the sum of all the multiples of 3 or 5 below 1000.

(defn threes-fives [n]
  (apply + (filter #(zero? (min (mod % 3)(mod % 5))) (range n)))
)

(time (println (threes-fives 1000)))

;; 233168
;; "Elapsed time: 7.783 msecs"
