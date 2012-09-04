#Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
#If d(a) = b and d(b) = a, where a  b, then a and b are an amicable pair and each of a and b are called amicable numbers.
#
#For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
#
#Evaluate the sum of all the amicable numbers under 10000.

require "mathn"

class Integer
	def factor
		n = self
		result = Array.new
		if n < 2 
			result << 1
		else 
			Prime.each.take_while { |p|
				while (n%p).zero? do
					n = n/p
					result << p
				end
				n>1
			}
		end
		return result	
	end

	def divisors
		return calc_divisors(self.factor, Array.new)
	end
	
	def proper_divisors
		return [] if self == 1  
		ret = calc_divisors(self.factor, Array.new)
		ret[1..ret.size-1]
	end
	
	def proper_divisor_sum
		return 0 if self == 1
		self.proper_divisors.inject(0) { |r,e| r+=e }
	end 
	private

	def calc_divisors(factors, divisors) 
		if factors == nil || factors.size == 0 
			return divisors << 1
		end
	
		a = factors[0]	
		next_divisors = Array.new
		if (divisors.size > 0)
			next_divisors = divisors.collect { |e| e*a }	
		else
			divisors << a
		end
		next_divisors << divisors
		next_divisors.flatten!
		if (!next_divisors.include?(a)) 
			next_divisors << a
		end
		next_divisors.uniq!

		return calc_divisors(factors[1, factors.size-1], next_divisors)		
	end 
end

amicable_numbers = Array.new
2.upto(10000) { |i| 
	ps = i.proper_divisor_sum
	pps = ps.proper_divisor_sum
	if (pps == i && ps != i) 
		puts "#{i} : #{ps}"	
		amicable_numbers << i
	end
}
puts amicable_numbers.inject(0) { |r,e| r+e }
