require_relative 'task'

class TaskRepository
  def initialize
    @tasks = []
  end

  # task é uma instacia do model Task
  def add(task)
    @tasks << task
  end

  def all
    @tasks
  end

  def remove(index)
    @tasks.delete_at(index)
  end

  def find(index)
    @tasks[index]
  end
end

# repository = TaskRepository.new
# t1 = Task.new('Aprender MVC')
# repository.add(t1)





