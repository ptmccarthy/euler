=begin
The following iterative sequence is defined for the set of positive integers:

n → n/2 (n is even)
n → 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:

13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.
=end

N = 1000000
$cache = {}

def collatz(num)
  n = num
  chain_length = 1

  until n == 1 do
    if $cache[n]
      chain_length += ($cache[n] - 1) #subtract one from cache because n is already counted
      next_n = 1
    elsif n.even?
      next_n = (n / 2)
    else
      next_n = (3*n + 1)
    end
    chain_length += 1 if not $cache[n]
    n = next_n
  end

  $cache[num] = chain_length
  $cache[num]
end

def longest_sequence_under(num)
  longest = [0,0]
  (3...num).each do |n|
    len = collatz(n)
    longest = [n,len] if len > longest[1]
  end
  longest
end

puts longest_sequence_under(N).to_s

#[837799, 525]
#
#real  0m3.497s
#user  0m3.456s
#sys 0m0.040s

