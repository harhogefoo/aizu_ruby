# Sort 1 - Selection Sort

def selection_sort(a)
  count = 0
  (0...a.length).each do |i|
    minj = i
    (i...a.length).each do |j|
      if a[j] < a[minj]
        minj = j
      end
    end
    next if i == minj
    tmp = a[i]
    a[i] = a[minj]
    a[minj] = tmp
    count += 1
  end
  count
end

n = gets.to_i
a = gets.split(" ").map(&:to_i)
count = selection_sort(a)
puts a.join(" ")
puts count