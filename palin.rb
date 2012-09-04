# Find the largest palindrome made from the product of two 3-digit numbers.

require "mathn"

def is_palindrom?(n)
	n.to_s == n.to_s.reverse
end

#biggest_produktof 2 3 digit numbers
a = 100
b = 999
bp = a * b
palindroms = Array.new
max = 0
100.upto(999) { |a|
	a.upto(999) { |b| 
		max = [max, a*b].max if is_palindrom?(a*b) 
	}
}
puts max

