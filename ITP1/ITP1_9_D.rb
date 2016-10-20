# String - Transformation

str = gets.chomp
n = gets.to_i
n.times do
  o = gets.chomp.split(" ")
  o[1] = o[1].to_i
  o[2] = o[2].to_i

  puts str[o[1]..o[2]] if o[0] == "print"
  str[o[1]..o[2]] = o[3] if o[0] == "replace"
  str[o[1]..o[2]] = str[o[1]..o[2]].reverse  if o[0] == "reverse"
end
