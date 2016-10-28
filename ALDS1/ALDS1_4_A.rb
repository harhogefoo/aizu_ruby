# Search - Linear Search

n = gets.to_i
s = gets.split(" ").map(&:to_i)

q = gets.to_i
t =  gets.split(" ").map(&:to_i)

puts (s & t).size
