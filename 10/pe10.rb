=begin 
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
=end

# from problem 7
def is_prime?(num)
  Math.sqrt(num).floor.downto(2).each do |i|
    return false if num % i == 0
  end
  true
end

def sum_of_primes_below(max)
  primes = []
  (2..max).each do |i|
    primes << i if is_prime?(i)
  end

  primes.inject(:+)
end

puts sum_of_primes_below(2_000_000)


# still not great...
#
# 142913828922
#
# real  1m45.944s
# user  1m45.875s
# sys 0m0.058s