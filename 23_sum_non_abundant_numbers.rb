# A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.
# A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.
# As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.
# Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

require "./euler.rb"

abundant_numbers = Array.new
lastAbundant = 1
n=1
MAX = 28123
while (n <= MAX) do
    if n.abundant?
        abundant_numbers << n 
        lastAbundant = n
    end 
    n+=1
end
#file.puts abundant_numbers
matches = Array.new
1.upto(MAX) { |n|
    abundant_numbers.each{ |abn|
        break if (n <= abn)
        dif = n-abn
        if (abundant_numbers & [dif] != [])
 #           file.puts "#{n} = #{abn} + #{dif}"
            matches << n
            break
        end
    }
}

non_matches = (1..MAX).to_a - matches
#puts " number of non matches: " << non_matches.size.to_s
#file.puts non_matches.to_s
puts non_matches.inject(0) { |r,e| r+e}
