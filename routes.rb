# Starting in the top left corner of a 2x2 grid, there are 6 routes (without backtracking) to the bottom right corner.
# How many routes are there through a 20x20 grid?

KNOWN = Hash.new

def n_routes(x, y)
	if (KNOWN[[x,y]] != nil)
		return KNOWN[[x,y]]
	end
	if (x == 0 || y == 0) 
		return 1
	elsif (x == 1 || y == 1)
		return x+y
	else
		KNOWN[[x,y]] = n_routes(x-1, y) + n_routes(x, y-1)
		return KNOWN[[x,y]]
	end
	
end

1.upto(20) { |i| 
	KNOWN[i] = n_routes(i,i) 
	puts "i: #{i}: #{KNOWN[i]}" 
} 
