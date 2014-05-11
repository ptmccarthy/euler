;; The prime factors of 13195 are 5, 7, 13 and 29.
;; 
;; What is the largest prime factor of the number 600851475143 ?

(defn prime? [n]
  (= 2 (reduce +
                (for [i (range 1 (inc n))]
                  (if (= 0 (mod n i)) 1 0)
                )
        )
  )
)

(println (prime? 4))
