# String - Finding a Word

w = gets.chomp.downcase

count = 0
loop do
  s = gets.chomp
  break if s == "END_OF_TEXT"
  s = s.downcase.split(" ")
  if s.include?(w)
    count += s.count(w)
  end
end
puts count
