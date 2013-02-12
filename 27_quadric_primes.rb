require "./euler.rb"

def generated_primes(a, b)
  return 0 unless b.prime?
  count = 1
  n = 0
  while true
    r = n**2 + a*n + b
    break unless r.prime?
    n += 1
  end 
  n
end

max = 0

puts -1000.prime?

-1000.upto(1000) { |a|
 -1000.upto(1000) { |b|
  n = generated_primes(a, b)
  if n > max
    max = n 
    puts "a: #{a} b: #{b} max: #{max}"
  end
 }
}
puts a*b
#a: -61 b: 971 max: 71
