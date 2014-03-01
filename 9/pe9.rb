=begin
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a^2 + b^2 = c^2
For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc. 
=end

def find_triplets_with_sum_of(sum)
  find_triplets_upto(sum).each do |triplet|
    if triplet.inject(:+) == sum
      puts "found matching triplet " + triplet.to_s
      puts "product abc = " + triplet.inject(:*).to_s
      break
    end
  end
end

# compute all triplets up to max m, where m > n
def find_triplets_upto(max)
  triplets = []
  (2..max).each do |m|
    (1...m).each do |n|
      triplets << compute_triplet(m,n)
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

# Test if a,b,c are a Pythagorean triplet
def is_triplet?(a,b,c)
  condition1 = true if a < b && b < c
  condition2 = true if a**2 + b**2 == c**2

  return true if condition1 && condition2
  false
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
