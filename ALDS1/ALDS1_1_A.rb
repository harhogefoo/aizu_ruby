# Getting Started - Insertion Sort

# a: array
def insertion_sort(a)
  (1...a.length).each do |i|
    puts a.join(" ")
    v = a[i]
    j = i - 1
    while j >= 0 and a[j] > v
      a[j+1] = a[j]
      j -= 1
    end
    a[j+1] = v
  end
end

n = gets.to_i
a = gets.split(" ").map(&:to_i)
insertion_sort(a)
puts a.join(" ")