class Task
  attr_accessor :title, :due_date, :is_complete

  def initialize(title, due_date)
    @title = title
    @due_date = due_date
    @is_complete = false
  end
  
  def complete
    @is_complete = !@is_complete
  end
end
