# Array - Official House

h_building = Hash.new(Array.new)
4.times do |i|
  h_floor = Hash.new
  3.times do |j|
    h_floor[j+1] = Array.new(10, 0)
  end
  h_building[i+1] = h_floor
end

n = gets.to_i
n.times do
  building, floor, room, v = gets.chomp.split(" ").map(&:to_i)
  h_building[building][floor][room-1] += v
end

h_building.each_with_index do |(building_num, h_floor), i|
  h_floor.each do |floor, room|
    puts " " + room.join(" ")
  end
  puts "####################" if h_building.size - 1 != i
end
