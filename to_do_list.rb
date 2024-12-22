require 'json'
# Load task.rb file
require_relative 'task'

class ToDoList
  def initialize(file = 'tasks.json')
    # Empty array that holds all tasks
    @tasks = []
    # Default filename is tasks.json
    @file = file
    load_tasks
  end

  def add_task(title, due_date)
    @tasks << Task.new(title, due_date)
    save_tasks
  end

  def delete_task(index)
    @tasks.delete_at(index)
    save_tasks
  end

  def list_tasks
    # Simply print out the list of tasks
    @tasks.each_with_index do |task, index|
      status = task.is_complete ? '[✔]' : '[ ]'
      puts "#{index + 1}. #{status} #{task.title} (Due: #{task.due_date})"
    end
  end

  def save_tasks
    # Convert tasks to an array of hashes and save to a file
    tasks_data = @tasks.map do |task|
      { title: task.title, due_date: task.due_date, is_complete: task.is_complete }
    end
    File.write(@file, JSON.pretty_generate(tasks_data))
  end

  def load_tasks
    return unless File.exist?(@file)

    tasks_data = JSON.parse(File.read(@file))
    @tasks = tasks_data.map do |data|
      task = Task.new(data['title'], data['due_date'])
      task.is_complete = data['is_complete']
      task
    end
  end
end
