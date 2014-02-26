=begin
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
=end

NUMBER = 600851475143

def is_prime?(num)
  Math.sqrt(num).floor.downto(2).each do |i|
    return false if num % i == 0
  end
  true
end

puts is_prime?(2)
puts is_prime?(29)
puts is_prime?(47)
puts is_prime?(2089)
puts is_prime?(79691)