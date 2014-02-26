=begin
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
=end

DIGITS=3

def is_palindrome?(num)
	num = num.to_s
	if num == num.reverse
		return true
	end
	false
end

def maxof(digits)
	max = 1
	digits.times do
		max *= 10
	end
	max -= 1
	max
end

def palindrome_product()
	term1 = term2 = maxof(DIGITS)
	big_pal = 0
	t1min = 0

	while term2 > t1min do
		term1.downto(1) do |i|
			product = i*term2
			if product > big_pal && is_palindrome?(product)
				big_pal = product
				t1min = i
				break
			end
		end
		term2 -= 1
	end



	big_pal
end

puts palindrome_product()