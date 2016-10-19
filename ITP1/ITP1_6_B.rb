# Array - Finding Missing Cards
s = (1..13).to_a
h = (1..13).to_a
c = (1..13).to_a
d = (1..13).to_a

n = gets.to_i
n.times do
  mark, num = gets.chomp.split(" ")
  num = num.to_i
  if mark == "S"
    s.delete(num)
  elsif mark == "H"
    h.delete(num)
  elsif mark == "C"
    c.delete(num)
  else
    d.delete(num)
  end
end

s.each { |num| puts "S #{num}" }
h.each { |num| puts "H #{num}" }
c.each { |num| puts "C #{num}" }
d.each { |num| puts "D #{num}" }
