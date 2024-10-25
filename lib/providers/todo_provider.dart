import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/todo.dart';

// Manage the state of the to-do list
class TodoNotifier extends ChangeNotifier {
  final List<Todo> _todos = [];

  List<Todo> get todos => _todos;


  void addTodo(String title) {
    _todos.add(Todo(title: title));
    notifyListeners();
  }

  // Deletes the to-do item 
  void removeTodo(int index) {
    if (index >= 0 && index < _todos.length) {
      _todos.removeAt(index);
      notifyListeners();
    }
  }

  // Sets the to-do item to 'Done'
  void toggleTodoCompletion(int index) {
    if (index >= 0 && index < _todos.length) {
      _todos[index].isCompleted = !_todos[index].isCompleted;
      notifyListeners();
    }
  }
}

final todoProvider = ChangeNotifierProvider<TodoNotifier>((ref) {
  return TodoNotifier();
});