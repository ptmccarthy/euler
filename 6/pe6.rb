=begin
The sum of the squares of the first ten natural numbers is,

1^2 + 2^2 + ... + 10^2 = 385
The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)^2 = 55^2 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
=end

MAX=100

def sum_of_squares(max)
	sum = 1
	(2..max).each do |x|
		sum += x**2			
	end
	sum
end

def square_of_sum(max)
	sum = 0
	count = 1
	while count <= max do
		sum += count
		count += 1
	end
	sum**2
end

puts (square_of_sum(MAX) - sum_of_squares(MAX)).abs

#result:
#25164150
#real	0m0.039s
#user	0m0.027s
#sys	0m0.011s