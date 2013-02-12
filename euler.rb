require "mathn"

class Integer
    
    def abundant?
        pd = proper_divisors
        return false if proper_divisors.size <= 3
        return (proper_divisors.inject(0) { |r,e| r+e } > self)
    end

	def factor
		n = self.abs
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

	def proper_divisors
		return [] if self == 1  
		ret = calc_divisors(self.factor, Array.new)
		ret[1..ret.size-1]
	end

	def divisors
		return calc_divisors(self.factor, Array.new)
	end

  def prime?
    divisors.length == 2
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

