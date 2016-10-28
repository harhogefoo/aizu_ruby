# Search - Dictionary

n, k = gets.chomp.split(" ").map(&:to_i)

k_ary = Array.new(k, 0)
w_ary = Array.new
n.times do
  w = gets.to_i
  w_ary.push(w)
end

max = w_ary.max

k_ary.length.times do |i|
  while w_ary.length > 0
    k_ary[i] += w_ary.pop
    break if k_ary[i] >= max
  end
end

puts "#{k_ary}"

