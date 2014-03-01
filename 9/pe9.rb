=begin
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a^2 + b^2 = c^2
For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc. 
=end

def find_triplets_with_sum_of(sum)
  max = Math.sqrt(sum).to_i.next
  puts max
  find_triplets_upto(max).each do |triplet|
    if triplet.inject(:+) == sum
      puts "found matching triplet " + triplet.to_s
      puts "product abc = " + triplet.inject(:*).to_s
      break
    end
  end
end

# Compute all triplets up to max m, where m > n
#  m and n are constrained to match Euclid's formula
#  1. b and c have opposite parities (i.e., both are not even/odd)
#  2. a, b, and c are coprime (follows from 1)
#  
#  NOTE: by enforcing opposite parity this def only finds fully reduced triplets
#  but greatly reduces the compute time. For example, it will not find [6,8,10]
#  because it is an unreduced form of [3,4,5].
#  Comment out the conditional for the shovel operator into triplets to turn off
def find_triplets_upto(max)
  triplets = []
  (2..max).each do |m|
    (1...m).each do |n|
      triplets << compute_triplet(m,n) if (m.even? && n.odd?) || (m.odd? && n.even?)
    end
  end
  triplets
end

# Given m & n compute triplet using the Euclid equations
def compute_triplet(m,n)
  a = (m**2) - (n**2)
  b = 2*m*n
  c = (m**2) + (n**2)
  [a,b,c]
end

# Fibonacci's method for generating primitive Pythagorean triples
#    Neat, but not actually useful for this problem but I'm leaving it
#    here for posterity.
def fibonacci_method(k)
  a = Math.sqrt(k).to_i
  n = (k-1)^2
  b = ((k+1)/2)-1
  puts b
  # k = a^2, c^2 = a^2 + b^2
  c = Math.sqrt(k + b**2).to_i
  puts [a,b,c]
end

find_triplets_with_sum_of(1000)
