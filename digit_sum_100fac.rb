#n! means n  (n  1)  ...  3  2  1
#
#For example, 10! = 10  9  ...  3  2  1 = 3628800,
#and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
#
#Find the sum of the digits in the number 100!

puts 1.upto(100).to_a.inject(1) { |r,e| r*=e }.to_s().split(//).inject(0) {|r,e| r+=e.to_i}
