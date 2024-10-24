import Utils "Utils";
import Types "Types";

actor {
    var todos: [Types.TodoItem] = [];

    public query func getTodos(): async [Types.TodoItem] {
        return todos;
    };

    public func addTodoItem(description: Text): async () {
        todos := Utils.addTodo(todos, description);
    };

    public func completeTodoItem(id: Nat): async () {
        todos := Utils.completeTodo(todos, id);
    };

    public func removeTodoItem(id: Nat): async () {
        todos := Utils.removeTodo(todos, id);
    };
}
