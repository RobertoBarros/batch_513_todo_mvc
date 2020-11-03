class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      print_action
      action = gets.chomp.to_i
      dispatch(action)
    end
  end

  private

  def print_action
    puts "1 - Create a Task"
    puts "2 - List all Tasks"
    puts "3 - Remove task"
    puts "4 - Mark task as Done"
    puts "Enter option:"
  end

  def dispatch(action)
    case action
    when 1 then @controller.create
    when 2 then @controller.list
    when 3 then @controller.remove
    when 4 then @controller.mark_as_done
    end
  end
end
