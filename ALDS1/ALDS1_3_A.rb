# Elementary data structures - Stack

input = gets.split
ary = []

input.each do |i|
  if i == '+'
    ary.push(ary.pop + ary.pop)
  elsif i == '-'
    ary.push(-ary.pop + ary.pop)
  elsif i == '*'
    ary.push(ary.pop * ary.pop)
  else
    ary.push(i.to_i)
  end
end

puts ary