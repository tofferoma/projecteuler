def fib(n) 
	if (n == 0) then
		return 1
	end
	if (n == 1) then
		 return 2 
	end
	return fib(n-1) + fib(n-2)
end

a = (0..1000000).to_a
sum = 0
a.each do |i|
	v = fib(i)
	if (v > 4000000) then
		break
	end
	if (v%2 == 0) then
		puts v.to_s
		sum += v 
	end
end
puts "result: " << sum.to_s
