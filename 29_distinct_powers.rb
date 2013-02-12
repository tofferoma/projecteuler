require "set"
res = Set.new
2.upto(100) { |a|
  2.upto(100) { |b|
    res << [a**b]
  }
}
puts res.size
