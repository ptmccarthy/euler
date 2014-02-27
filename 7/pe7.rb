=begin
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?	
=end

# from problem 3
def is_prime?(num)
  Math.sqrt(num).floor.downto(2).each do |i|
    return false if num % i == 0
  end
  true
end

count = 2
primes = 0
last_prime = 0

until primes == 10001 do
	if is_prime?(count)
		primes += 1
		last_prime = count
	end
	count += 1
end

puts last_prime