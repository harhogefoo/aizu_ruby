# Character - Sum of Numbers

loop do
  s = gets.chomp.split("").map(&:to_i)
  break if s[0] == 0
  puts s.inject(:+)
end
