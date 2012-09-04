# A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,
# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def pytho?(a,b,c)
	a*a + b*b == c*c
end

def sums_to_1000(a,b,c)
	a+b+c == 1000
end

tries = 1000

1.upto(tries) { |a|
1.upto(tries) { |b|
1.upto(tries) { |c|
	if (pytho?(a,b,c) && sums_to_1000(a,b,c))
		puts a.to_s << ",  " << b.to_s << ", " << c.to_s << ": " << (a*b*c).to_s
	end
}
}
}
