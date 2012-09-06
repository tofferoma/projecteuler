#A permutation is an ordered arrangement of objects. For example, 3124 is one possible permutation of the digits 1, 2, 3 and 4. If all of the permutations are listed numerically or alphabetically, we call it lexicographic order. The lexicographic permutations of 0, 1 and 2 are:
#
#012   021   102   120   201   210
#
#What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?

digits = Array[0,1,2,3,4,5,6,7,8,9]
size = digits.size
perms = Hash[]
1.upto(size+1) { |i| 
    perms[size-i+1] = (1..i).to_a.inject(1) { |r,e| r*e }
}
#puts perms

sum = 999_999
k = 0
steps = Hash[0=>0,1=>0,2=>0,3=>0,4=>0,5=>0,6=>0,7=>0,8=>0,9=>0]
while (sum > 0)
    #puts "sum: #{sum}, permsat #{k}: #{perms[k]}"
    if (sum < perms[k]) 
        k += 1
    else
        steps[k-2] += 1
        sum -= perms[k]
    end
end
#expected_steps = Hash[0=>0,1=>0,2=>0,3=>0,4=>0,5=>0,6=>0,7=>2,8=>1,9=>0]
#puts expected_steps
#puts steps

result = Array[0,0,0,0,0,0,0,0,0,0]
avail = Array[0,1,2,3,4,5,6,7,8,9]
#expected = Array[0,1,2,3,4,5,6,9,8,7]

steps.each { |k,v|
#    puts "picking #{v}"
#    puts "avail" << avail.to_s
#    puts "intermed res: " << result.to_s
#    puts ""
    result[k] = avail[v]
    avail = avail - (avail & [avail[v]])
}
#puts "expec: #{expected}"
puts "result: #{result}"
