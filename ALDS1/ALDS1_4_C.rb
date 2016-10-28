# Search - Dictionary

n = gets.to_i

h = Hash.new(0)
n.times do
  command, str = gets.chomp.split(" ")
  if command == "insert"
    h[str] = 1
  end

  if command == "find"
    if h[str] == 0
      puts "no"
    else
      puts "yes"
    end
  end
end
