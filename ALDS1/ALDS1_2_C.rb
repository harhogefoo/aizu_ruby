# Sort 1 - Stable Sort

def bubble_sort(c)
  (0...c.length).each do |i|
    (c.length-1).downto(i+1) do |j|
      if c[j][1].to_i < c[j-1][1].to_i
        tmp = c[j]
        c[j] = c[j-1]
        c[j-1] = tmp
      end
    end
  end
end

def selection_sort(c)
  (0...c.length).each do |i|
    minj = i
    (i...c.length).each do |j|
      if c[j][1].to_i < c[minj][1].to_i
        minj = j
      end
    end
    tmp = c[i]
    c[i] = c[minj]
    c[minj] = tmp
  end
end

n = gets.to_i
a = gets.chomp.split(" ")
b = Array.new(a)
bubble_sort(a)
selection_sort(b)
puts a.join(" ")
puts "Stable"
puts b.join(" ")

a.length.times do |i|
  if a[i] != b[i]
    puts "Not stable"
    exit
  end
end
puts "Stable"
