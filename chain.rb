# The following iterative sequence is defined for the set of positive integers:
# n  n/2 (n is even)
# n  3n + 1 (n is odd)
# Using the rule above and starting with 13, we generate the following sequence:
# 13  40  20  10  5  16  8  4  2  1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
#Which starting number, under one million, produces the longest chain?
#NOTE: Once the chain starts the terms are allowed to go above one million.

class Integer
	def num_chainelements
		n = self
		if (n == 2) 
			return 2
		elsif (n%2).zero? 
			return 1+(n/2).num_chainelements
		else
			return 1+(3*n+1).num_chainelements
		end
	end
end

max_num = 0
max = 0
1.upto(1_000_000) { |i|
	nc = i.num_chainelements
	if(max_num < nc) 
		max_num = nc
		max = i
	end
}
puts max
