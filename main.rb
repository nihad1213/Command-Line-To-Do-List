require "rainbow/refinement"
using Rainbow

loop do
  puts "Choose an option: "
  puts "1 =>Add Task"
  puts "2 => View Task"
  puts "3 => Delete Task"
  puts "4 => Mark Task as Complete/Incomplete"
  puts "5 => Exit"
  print "Enter your choice: "
  choice = gets.to_i

  if choice == 1
    puts "1".green
  elsif choice == 2
    puts "2".green
  elsif choice == 3
    puts "3".green
  elsif choice == 4
    puts "4".green
  elsif choice == 5
    puts "Closing Program.".green
    break
  else
    puts "Wrong Operation!".red
  end
end


