=begin 
The sequence of triangle numbers is generated by adding the natural numbers.
So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28.
The first ten terms would be:

1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

Let us list the factors of the first seven triangle numbers:

 1: 1
 3: 1,3
 6: 1,2,3,6
10: 1,2,5,10
15: 1,3,5,15
21: 1,3,7,21
28: 1,2,4,7,14,28
We can see that 28 is the first triangle number to have over five divisors.

What is the value of the first triangle number to have over five hundred divisors?
=end

def triangle_number(x)
  triangle_num = (x*(x+1))/2
  triangle_num
end

def factors(num)
  factors = []
  (1..num).each do |x|
    factors << x if num % x == 0
  end
  factors
end

def first_with_number_of_divisors_over(divisors)
  count = 1
  t_num = triangle_number(count)
  factors = factors(t_num).length
  until factors > divisors do
    t_num = triangle_number(count)
    factors = factors(t_num).length
    count += 1
  end
  puts t_num
end

first_with_number_of_divisors_over(500)