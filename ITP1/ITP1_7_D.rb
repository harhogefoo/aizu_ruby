# Structured Program Ⅱ - Matrix Multiplication
n, m, l = gets.split.map(&:to_i)
n_x_m = Array.new
m_x_l = Array.new
n.times { n_x_m << gets.split.map(&:to_i) }
m.times { m_x_l << gets.split.map(&:to_i) }

ans = Array.new
n.times do |rx|
  v = Array.new
  l.times do |cx|
    sum = 0
    m.times do |mx|
      sum += n_x_m[rx][mx] * m_x_l[mx][cx]
    end
    v << sum
  end
  ans << v
end

ans.each { |row| puts row.join(' ') }