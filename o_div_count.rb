require 'mathn'
class Integer
  def factor_count
    num = self
    count = 1
    Prime.each.take_while { |prime|
      current = 1
      while (num % prime).zero?
        num /= prime
        current += 1
      end
      count *= current
      num != 1 
    }
   count
  end
end

num, incr = 1, 2
puts "Started at #{Time.now}."
num, incr = num + incr, incr + 1 until num.factor_count > 500
puts "Number is #{num}."
puts "Finished at #{Time.now}."
