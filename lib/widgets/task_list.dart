import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskdata, Widget child) {
        return ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: taskdata.totalTasks,
          itemBuilder: (context, index) {
            return TaskTile(
              deleteTask: () {
                taskdata.removeTask(index);
              },
              taskTitle: taskdata.tasks[index].name,
              isChecked: taskdata.tasks[index].done,
              toggleCheckBox: (_) {
                taskdata.updateCheckBox(taskdata.tasks[index]);
              },
            );
          },
        );
      },
    );
  }
}
