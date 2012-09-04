#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# 20 = 2*2*5
# 19 = 19
# 18 = 3*3*2
# 17 = 17
# 16 = 2*2*2*2
# 15 = 3*5
# 14 = 7*2
# 13 = 13
# 12 = 2*2*3
# 11 = 11
# 10 = 2*5
#  9 = 3*3
#  8 = 2*2*2
#  7 = 7
#  6 = 2*3
#  5 = 5
#  4 = 2*2
#  3 = 3
#  2 = 2

o = 2*2 *5 *19 *3*3 *17 *2*2 *7 *13 *11
1.upto(20) { |d|
	puts o.to_f/d
}
puts o
