# Array - Matrix Vector Multiplication

n, m = gets.chomp.split(" ").map(&:to_i)

n_matrix = Array.new
n.times do
  matrix = gets.chomp.split(" ").map(&:to_i)
  n_matrix << matrix
end


m_matrix = Array.new
m.times do
  m_matrix.push(gets.to_i)
end

n.times do |i|
  ans = 0
  n_matrix[i].each_with_index do |a, j|
    ans += a * m_matrix[j]
  end
  puts ans
end
