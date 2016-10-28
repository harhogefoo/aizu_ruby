# Elementary data structures - Doubly Linked List

n = gets.to_i

dll = Array.new
n.times do
  command, num = gets.chomp.split(" ")
  if command == "insert"
    num = num.to_i
    dll.unshift(num)
  end

  if command == "delete"
    num = num.to_i
    i = dll.find_index(num)
    dll.delete_at(i) if i != nil
  end

  if command == "deleteFirst"
    dll.shift
  end

  if command == "deleteLast"
    dll.pop
  end
end

puts dll.join(" ")
