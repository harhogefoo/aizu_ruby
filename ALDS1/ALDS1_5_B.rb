# Recursion / Divide and Conquer - Exhaustive Search (全探索)

n = gets.to_i
a = gets.split(" ").map(&:to_i)
q = gets.to_i
m = gets.split(" ").map(&:to_i)

def solve(i, m, a)
  # puts "i: #{i} m; #{m}"
  if m == 0
    return true
  end
  if i >= a.length
    return false
  end
  solve(i + 1, m, a) || solve(i + 1, m - a[i], a)
end

m.each do |mm|
  if solve(0, mm, a)
    puts "yes"
  else
    puts "no"
  end
end
