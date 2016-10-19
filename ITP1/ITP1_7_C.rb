# Structured Program Ⅱ - Spreadsheet

r, c = gets.chomp.split(" ").map(&:to_i)

new_row = Array.new(c+1, 0)

r.times do
  row = gets.chomp.split(" ").map(&:to_i)
  row.push(row.inject(:+))

  row.length.times do |i|
    new_row[i] += row[i]
  end
  puts row.join(" ")
end

puts new_row.join(" ")
