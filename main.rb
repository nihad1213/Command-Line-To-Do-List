require 'rainbow/refinement'
require_relative 'to_do_list'
using Rainbow

# Initialize the ToDoList
to_do_list = ToDoList.new

loop do
  puts "Choose an option: "
  puts "1 => Add Task"
  puts "2 => View Tasks"
  puts "3 => Delete Task"
  puts "4 => Mark Task as Complete/Incomplete"
  puts "5 => Exit"
  print "Enter your choice: "
  choice = gets.to_i

  case choice
  when 1
    # Add Task
    print "Enter task title: "
    title = gets.chomp
    print "Enter due date (YYYY-MM-DD): "
    due_date = gets.chomp
    to_do_list.add_task(title, due_date)
    puts "Task added!".green
  when 2
    # View Tasks
    puts "Tasks:"
    to_do_list.list_tasks
  when 3
    # Delete Task
    print "Enter task number to delete: "
    task_number = gets.to_i
    if task_number.between?(1, to_do_list.instance_variable_get(:@tasks).size)
      to_do_list.delete_task(task_number - 1)
      puts "Task deleted!".green
    else
      puts "Invalid task number.".red
    end
  when 4
    # Mark Task as Complete/Incomplete
    print "Enter task number to mark as complete/incomplete: "
    task_number = gets.to_i
    if task_number.between?(1, to_do_list.instance_variable_get(:@tasks).size)
      task = to_do_list.instance_variable_get(:@tasks)[task_number - 1]
      task.is_complete = !task.is_complete2
      puts "Task marked as #{task.is_complete ? 'Complete' : 'Incomplete'}!".green
      to_do_list.save_tasks
    else
      puts "Invalid task number.".red
    end
  when 5
    puts "Closing Program.".green
    break
  else
    puts "Wrong Operation!".red
  end
end
