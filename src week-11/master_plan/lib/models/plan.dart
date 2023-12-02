import 'task.dart';

class Plan {
  // Praktikum 1
  final String name;
  final List<Task> tasks;

  const Plan({this.name = '', this.tasks = const []});

  // Praktikum 2
  int get completedCount => tasks.where((task) => task.complete).length;

  String get completenessMessage =>
      '$completedCount out of ${tasks.length} tasks';
}
