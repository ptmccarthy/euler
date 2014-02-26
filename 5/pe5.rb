=begin
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?		
=end

DIVBYALLUPTO = 20

def div(max)
	num = max
	found = false

	while not found do
		divisible_by_all = true
		(1..max).each do |i|
			divisible_by_all = false if num % i != 0
		end
		if divisible_by_all
			return num
		else
			num += 1
		end
	end
end

puts div(DIVBYALLUPTO)

# holy moly this is an inefficient bruteforce but it produces the correct solution of 232792560
# LOL
# time ruby pe5.rb
# => real	8m11.064s
# => user	8m10.496s
# => sys	0m0.426s