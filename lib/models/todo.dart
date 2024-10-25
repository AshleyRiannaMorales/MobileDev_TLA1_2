
// Represents a task / to-do item
class Todo {
  final String title;
  bool isCompleted;

  Todo({
    required this.title,
    this.isCompleted = false,
  });
}