# Class code
class TodoList
    def initialize
        @todos = []
    end
    def add(todo)
        @todos << todo
    end
    def remove(todo)
        @todos.delete(todo)
    end

    def todos
        @todos.dup
    end
end

#RSpec Skeleton Test
RSpec.describe TodoList do
    describe "#add" do
    it "adds a todo to the list" do
      todo_list = TodoList.new
      todo = "Purchase items"
      todo_list.add(todo)
      expect(todo_list.todos).to include(todo)
    end
end
describe "#remove" do
  it "remove a todo from the list " do
    todo_list = TodoList.new
    todo = "Purchase items"
    todo_list.add(todo)
    todo_list.remove(todo)
    expect(todo_list.todos).not_to include(todo)

  end
end
describe "#todos" do
   it "returns all todos" do
    todo_list = TodoList.new
    todos =["Purchase items", "Go to gym"]
    todos.each {|todo| todo_list.add(todo)}
    expect(todo_list.todos).to eq(todos)
      
    end
   end
end