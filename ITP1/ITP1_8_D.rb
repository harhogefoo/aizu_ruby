# Character - Counting Characters

s = gets.chomp
p = gets.chomp

s.length.times do
  if s.include?(p)
    puts "Yes"
    exit
  end

  tmp = s[-1]
  s[-1] = ""
  s = tmp + s
end
puts "No"
