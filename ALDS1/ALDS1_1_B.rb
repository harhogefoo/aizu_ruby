# Getting Started - Greatest Common Divisor

def normal_gcd(x, y)
  n = [x, y].min
  n.downto(1) do |d|
    return d if x % d == 0 and y % d == 0
  end
end

def gcd(x, y)
  if y > x # swap
    tmp = x; x = y; y = tmp
  end
  while y > 0
    r = x % y
    x = y
    y = r
  end
  x
end

x, y = gets.split(" ").map(&:to_i)

# puts normal_gcd(x, y)
puts gcd(x, y)
