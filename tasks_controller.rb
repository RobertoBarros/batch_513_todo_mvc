require_relative 'tasks_view'

class TasksController
  def initialize(repository)
    @view = TasksView.new
    @repository = repository
  end

  def create
    # 1. Pegar a descrição da Task
    description = @view.ask_task_description

    # 2. Criar uma instância da task
    new_task = Task.new(description)

    # 3. Adicionar a instância da task no repositório
    @repository.add(new_task)
  end

  def list
    # Pegar todas as tasks do repository
    tasks = @repository.all
    # Mandar para a view exibir as tasks
    @view.display(tasks)
  end

  def remove
    # Listar todas as task com o index
    list
    # Perguntar qual o index da task para remover
    index = @view.ask_index
    # Pedir para o repository remover a task pelo index
    @repository.remove(index)
  end

  def mark_as_done
    # Listar todas as tasks
    list
    # Perguntar qual o index da task para marcar como done
    index = @view.ask_index
    # Encontrar a task no repository
    task = @repository.find(index)
    # Marcar como done!
    task.done!
  end
end