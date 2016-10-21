# Getting Started - Prime Numbers

def is_prime(x)
  return true if x == 2

  return false if x < 2 || x % 2 == 0

  i = 3
  while i <= Math::sqrt(x)
    return false if x % i == 0
    i = i + 2
  end
  true
end


n = gets.to_i
count = 0
n.times do
  count += 1if is_prime(gets.to_i)
end
puts count
