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

# adapted from problem 7
def sum_of_primes_below(max)
  count = 2
  sum = 0

  until count == max do
    sum += count if is_prime?(count)
    count += 1
  end

  sum
end

puts sum_of_primes_below(2000000)