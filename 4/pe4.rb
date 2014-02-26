=begin
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
=end

DIGITS=1

def is_palindrome?(num)
	num = num.to_s
	if num == num.reverse
		return true
	end
	false
end

def products(digits)
	max = 1
	digits.times do
		max *= 10
	end
	max -= 1



end