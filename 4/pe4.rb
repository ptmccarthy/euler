=begin
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
=end

DIGITS=2

def is_palindrome?(num)
	num = num.to_s
	if num == num.reverse
		return true
	end
	false
end

puts is_palindrome?(9010)