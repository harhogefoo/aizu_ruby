# Math Functions - Standard Deviation

loop do
  n = gets.to_i
  break if n == 0

  s = gets.chomp.split(" ").map(&:to_i)
  m = s.inject(:+) / n.to_f
  a2 = s.inject (0.0){ |sum, i| sum + (i - m) ** 2 }
  a2 /= n.to_f
  ans = Math::sqrt(a2)
  puts ans
end
