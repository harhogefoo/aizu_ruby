# String - Card Game

n = gets.to_i
p_taro = 0
p_hanako = 0
n.times do
  taro, hanako = gets.chomp.split(" ")
  if taro == hanako
    p_taro += 1
    p_hanako += 1
  elsif taro > hanako
    p_taro += 3
  else
    p_hanako += 3
  end
end

puts "#{p_taro} #{p_hanako}"
