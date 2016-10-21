# Sort 1 - Bubble Sort

def bubble_sort(a)
  flag = true
  count = 0
  while flag
    flag = false
    (a.length-1).downto(1) do |j|
      if a[j] < a[j-1]
        tmp = a[j]
        a[j] = a[j-1]
        a[j-1] = tmp
        flag = true
        count += 1
      end
    end
  end
  count
end

n = gets.to_i
a = gets.split(" ").map(&:to_i)
count = bubble_sort(a)
puts a.join(" ")
puts count