=begin
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?		
=end

DIVBYALLUPTO = 20

def div(max)
	num = 20
	until (1..max).all? { |i| num % i == 0 }
		num += 1
	end
	num
end


puts div(DIVBYALLUPTO)

# this is still pretty inefficient but its a big improvement over 8+ minutes...
# 232792560
# real	2m39.209s
# user	2m39.003s
# sys	0m0.177s