# Elementary data structures - Queue

n, q = gets.split(" ").map(&:to_i)

total = 0
queue = Array.new
task_hash = Hash.new
n.times do
  name, time = gets.split(" ")
  time = time.to_i
  if time <= q
    total += time
    task_hash[name] = total
  else
    time -= q
    total += q
    queue << [name, time]
  end
end

while queue.length != 0
  task = queue.shift
  if task[1] <= q
    total += task[1]
    task_hash[task[0]] = total
  else
    task[1] -= q
    total += q
    queue << task
  end
end

task_hash.each do |k, v|
  puts "#{k} #{v}"
end
