=begin
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a^2 + b^2 = c^2
For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.	
=end

def is_triplet?(a,b,c)
    condition1 = true if a < b && b < c
    condition2 = true if a**2 + b**2 == c**2

    return true if condition1 && condition2
    false
end

def compute_triplet(m,n)
    a = n**2 - m**2
    b = 2*n*m
    c = n**2 + m**2
    [a,b,c]
end

def scale_triplet(factor)
    triplet = [3,4,5]
    scaled = []
    triplet.each { |x| scaled << x*factor }
    scaled
end

def find_triplets_equal_to(max)
    m = 1
    n = 2
    values = compute_triplet(m,n)
    until values.inject(:+) >= max do
        m += 1
        n += 1
        values = compute_triplet(m,n)
    end
    values
end

#puts find_triplets_equal_to(1000)

puts scale_triplet(20)