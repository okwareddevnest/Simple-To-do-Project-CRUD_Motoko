import Array "mo:base/Array";
import Types "Types";

module {
    public func addTodo(todos: [Types.TodoItem], description: Text): [Types.TodoItem] {
        let newTodo: Types.TodoItem = {
            id = todos.size() + 1;
            description = description;
            completed = false;
        };
        return Array.append(todos, [newTodo]);
    };

    public func completeTodo(todos: [Types.TodoItem], id: Nat): [Types.TodoItem] {
        return Array.map<Types.TodoItem, Types.TodoItem>(todos, func(todo) {
            if (todo.id == id) {
                { todo with completed = true }
            } else {
                todo
            }
        });
    };

    public func removeTodo(todos: [Types.TodoItem], id: Nat): [Types.TodoItem] {
        return Array.filter<Types.TodoItem>(todos, func(todo) {
            todo.id != id
        });
    };
}
