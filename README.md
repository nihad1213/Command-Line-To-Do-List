# Ruby To-Do List Application

A simple command-line To-Do List application written in Ruby that allows users to manage their tasks with persistent storage using JSON.

## Features

* Add new tasks with title and due date
* View all tasks with their completion status
* Delete tasks by selection
* Mark tasks as complete or incomplete
* Persistent storage using JSON file

## Requirements

### Ruby Installation

#### Windows
1. Download RubyInstaller from [rubyinstaller.org](https://rubyinstaller.org/)
2. Run the installer and follow the installation steps
3. Ensure Ruby is added to your PATH during installation

#### macOS
```bash
# Install Homebrew (if not installed)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Ruby
brew install ruby
```

#### Linux (Ubuntu/Debian)
```bash
sudo apt update
sudo apt install ruby-full
```

### Dependencies

Install the required gem for colorful terminal output:
```bash
gem install rainbow
```

## Installation

1. Clone the repository:
```bash
git clone https://github.com/yourusername/todo-list.git
cd todo-list
```

## Usage

Run the application:
```bash
ruby todo_list.rb
```

### Available Options

1. Add Task - Create a new task with title and due date
2. View Tasks - Display all tasks and their status
3. Delete Task - Remove a task by its number
4. Mark Task - Toggle task completion status
5. Exit - Close the application

## File Structure

* `todo_list.rb` - Main application script
* `task.rb` - Task class definition
* `tasks.json` - Task storage file

## Example Usage

```
Choose an option:
1 => Add Task
2 => View Tasks
3 => Delete Task
4 => Mark Task as Complete/Incomplete
5 => Exit
Enter your choice: 1
Enter task title: Buy groceries
Enter due date (YYYY-MM-DD): 2024-12-25
Task added!
```

## Storage

All tasks are automatically saved to `tasks.json` in the application directory, ensuring data persistence between sessions.