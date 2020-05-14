import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'buy ps4'),
    Task(name: 'start freelancing'),
    Task(name: 'become a computer Scientist'),
    Task(name: 'earn lots of money'),
  ];

 void addTask(TextEditingController taskController) {
   final task = Task(name: taskController.text);
    tasks.add(task);
    notifyListeners();
    
  }
  void removeTask(int index){
    tasks.removeAt(index);
    notifyListeners();
  }

int get totalTasks{
  return tasks.length;
}



void updateCheckBox(Task task){
 task.toggleTaskDone();
 notifyListeners();
}
 
}