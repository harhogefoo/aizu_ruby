# Character - Counting Characters

s = gets(nil).downcase
('a'..'z').each do |a|
  puts "#{a} : #{s.count(a)}"
end