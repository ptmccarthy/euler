=begin 
n! means n × (n − 1) × ... × 3 × 2 × 1

For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

Find the sum of the digits in the number 100!
=end

# extend Integer with factorial function
class Integer
  def factorial
    (1..self).inject(:*) || 1
  end
end

def sum_of_factorial_digits(num)
  f = num.factorial
  f.to_s.chars.map(&:to_i).inject(:+)
end

puts sum_of_factorial_digits(100)


#648
#
#real  0m0.033s
#user  0m0.024s
#sys 0m0.009s
