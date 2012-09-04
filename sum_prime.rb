# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.
require "mathn"

primes = Prime.new
p = primes.next
s = 0
while (p < 2_000_000) do
	puts (2_000_000 - p).to_s << " to go"
	s += p
	p = primes.next
end
puts s
