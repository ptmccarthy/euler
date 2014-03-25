=begin
2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

What is the sum of the digits of the number 2^1000?
=end

bignum = 2**1000

sum = bignum.to_s.chars.map(&:to_i).inject(:+)

puts sum

#1366
#
#real  0m0.034s
#user  0m0.024s
#sys 0m0.008s