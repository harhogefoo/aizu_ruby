# Structured Program Ⅱ - How many ways?

count = 0
loop do
  n, x = gets.chomp.split(" ").map(&:to_i)
  break if n == x and x == 0

  c = 0
  (1..n).each do |i|
    (1..n).each do |j|
      (1..n).each do |k|
        next if i == j or j == k or i == k
        c += 1 if i + j + k == x
      end
    end
  end
  puts c / 6
end
