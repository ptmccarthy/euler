=begin
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
=end

NUMBER = 600851475143

# only have to check divisors up to sqrt(num)
def is_prime?(num)
  Math.sqrt(num).floor.downto(2).each do |i|
    false if num % i == 0
  end
  true
end


def largest_prime(num)
  prime = num
  # iterate on each divisor from 2 to sqrt(num)
  (2..Math.sqrt(num).to_int).each do |i|
    # if prime <= i then we found the largest prime
    break if prime <= i
    # while prime is divisable by i keep dividing and assigning the result to prime
    prime /= i while (prime > i && prime % i == 0)
  end
  prime
end

puts largest_prime(NUMBER)
