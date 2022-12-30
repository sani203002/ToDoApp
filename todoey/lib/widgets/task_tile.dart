import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallBack;
  final VoidCallback longPressCallBack;
  TaskTile({
    required this.isChecked,
    required this.taskTitle,
    required this.checkboxCallBack,
    required this.longPressCallBack,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (newValue) {
          checkboxCallBack(newValue);
        },
      ),
    );
  }
}

// class TaskTile extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(
//         'this is a task',
//       ),
//       trailing: Checkbox(
//         onChanged: null,
//         value: false,
//       ),
//     );
//   }
// }
