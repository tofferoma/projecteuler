# The sum of the squares of the first ten natural numbers is,
# 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)^2 = 55^2 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025  385 = 2640.
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

a=1
b=100

sum = (a+b) * b/2 
square_of_sums = sum*sum

sum_of_squares = 0
1.upto(100) { |i|
	sum_of_squares += i*i
}

puts (sum_of_squares - square_of_sums).abs
