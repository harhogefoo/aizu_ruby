# Math Functions - Triangle

a, b, theta = gets.chomp.split(" ").map(&:to_i)

s = a * b / 2 * Math.sin(theta / 180.0 * Math::PI)
l = a + b + Math::sqrt(a ** 2 + b ** 2 + (-2 * a * b * Math.cos(theta / 180.0 * Math::PI)))
h = b * Math.sin(theta / 180.0 * Math::PI)

puts s
puts l
puts h