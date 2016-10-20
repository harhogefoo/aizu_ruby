# Math Functions - Distance 2

n = gets.to_i
x = gets.chomp.split(" ").map(&:to_i)
y = gets.chomp.split(" ").map(&:to_i)

(1..3).each do |i|
  distance = 0
  n.times do |j|
    distance += ((x[j] - y[j]).abs) ** i
  end
  distance **= (1.0 / i.to_f)
  puts distance
end

sum = 0
n.times do |i|
  a = (x[i] - y[i]).abs
  sum = a.to_f if sum < a
end
puts sum

