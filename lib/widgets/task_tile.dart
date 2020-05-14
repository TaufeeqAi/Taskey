import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final Function toggleCheckBox;
  final bool isChecked;
  final String taskTitle;
  final Function deleteTask;

  TaskTile(
      {this.isChecked, this.taskTitle, this.toggleCheckBox, this.deleteTask});
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: GestureDetector(
        onLongPress: deleteTask,
        child: Text(
          taskTitle,
          style: TextStyle(
              color: Colors.black,
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
      ),
      activeColor: Colors.redAccent,
      value: isChecked,
      onChanged: toggleCheckBox,
    );
  }
}
