=begin

If the numbers 1 to 5 are written out in words: one, two, three, four, five,
then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

If all the numbers from 1 to 1000 (one thousand) inclusive were written out 
in words, how many letters would be used?

NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two)
contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The
use of "and" when writing out numbers is in compliance with British usage.

=end

COUNT_TO=1000

DICT = {
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five",
  6 => "six",
  7 => "seven",
  8 => "eight",
  9 => "nine",
  10 => "ten",
  11 => "eleven",
  12 => "twelve",
  13 => "thirteen",
  14 => "fourteen",
  15 => "fifteen",
  16 => "sixteen",
  17 => "seventeen",
  18 => "eighteen",
  19 => "nineteen",
  20 => "twenty",
  30 => "thirty",
  40 => "forty",
  50 => "fifty",
  60 => "sixty",
  70 => "seventy",
  80 => "eighty",
  90 => "ninety",
  100 => "hundred",
  1000 => "thousand"
}

sum = 0

class Integer
  def to_english
    string = ""
    chars = []
    self.to_s.each_char { |c| chars << c.to_i }
    chars.reverse!
    under_twenty = false

    # thousands
    if (chars.length > 3)
      string += DICT[chars[3]] unless (chars[3] == 0)
      string += DICT[1000]
      string += "and" unless (chars[2] + chars[1] + chars[0] >= 0)
    end

    # hundreds
    if (chars.length > 2)
      string += DICT[chars[2]] unless (chars[2] == 0)
      string += DICT[100] unless (chars[2] == 0)
      string += "and" unless (chars[1] + chars[0] == 0)
    end

    # tens
    if (chars.length > 1)
      # handle less than 20
      n = (chars[1].to_s + chars[0].to_s).to_i
      if (n < 20 && n > 0)
        under_twenty = true
        string += DICT[n]
      else
        string += DICT[chars[1]*10] unless (chars[1] == 0)
      end
    end

    # ones
    unless (under_twenty == true)
      string += DICT[chars[0]] unless (chars[0] == 0)
    end

    string
  end
end


for x in 1..COUNT_TO do
  sum += x.to_english.length
end

puts sum


#21124
#
#real  0m0.044s
#user  0m0.031s
#sys 0m0.011s
