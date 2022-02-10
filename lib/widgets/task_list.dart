import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

    final bool isChecked;
    final String taskTille;
    final void Function(bool?)checkboxChange;
    TaskTile({required this.isChecked, required this.taskTille,required this.checkboxChange});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTille,
      style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough:null),
      ),

      trailing: Checkbox(
      value: isChecked,
      
      onChanged: checkboxChange,
    ) ,
    );
  }
}


      

