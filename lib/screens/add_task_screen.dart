import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
   final Function addTaskCallback;
  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      padding: EdgeInsets.all(35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Add Task',textAlign: TextAlign.center,style: TextStyle(fontSize: 35,color: Colors.indigo[400],fontWeight: FontWeight.bold)),
          TextField(
            autofocus: true,
            textAlign:TextAlign.center,
            onChanged: (newText){
              newTaskTitle = newText;
            },
          ),
          SizedBox(height: 35),
          TextButton(
            onPressed: () {
              addTaskCallback(newTaskTitle);
            },
            child: Text('Add'),
            style: TextButton.styleFrom(
              backgroundColor: Colors.teal[400],
              primary: Colors.white,
            ),

            ),
        ],
      ),
    );
  }
}
