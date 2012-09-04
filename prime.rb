require "mathn"

z = 600851475143
primes = Prime.new
fac = primes.next
while (z>1) do
	if (z%fac == 0) then
		puts fac
		z = z/fac
	else 
		fac = primes.next
	end
end
