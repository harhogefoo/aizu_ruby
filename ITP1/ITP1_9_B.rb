# String - Shuffle

loop do
  s = gets.chomp
  break if s == "-"
  m = gets.to_i
  m.times do
    h = gets.to_i
    tmp = s[0, h]
    s[0, h] = ""
    s = s + tmp
  end
  puts s
end



