# Find first fib number with 1000 digits
FIB=Hash[0=>1, 1=>1]


def fib(n) 
    return FIB[0] if n==0 || n==1
    FIB[n] = FIB[n-1] + FIB[n-2]
    return FIB[n]
end

1.upto(10) {|i|
    puts fib(i)    
}


target = 10**999
puts target.to_s.size.to_s
 
i = 2
v = 0 
begin 
 	v = fib(i)
    i += 1
    puts "result: fib(" << i.to_s << ") = " << v.to_s.size.to_s
end while (v < target)
puts "result: fib(" << i.to_s << ") = " << v.to_s.size.to_s
