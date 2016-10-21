# Getting Started - Maximum Profit

n = gets.to_i

min = gets.to_i
max = -2000000000
(1..n-1).each do
  r = gets.to_i
  max = r - min if max < r - min
  min = r if r < min
end

puts max