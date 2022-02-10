import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/widgets/task_list.dart';



class TasksList extends StatefulWidget {
  final List<Task> tasks;
  
  TasksList(this.tasks);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context,index){
        return TaskTile(
          isChecked:widget.tasks[index].isDone,
          taskTille: widget.tasks[index].name,
          checkboxChange:(newValue){
            setState(() {
              widget.tasks[index].doneChange();
            });
          }
          );
      },
      );
    // return ListView(
    //   children: [
    //     TaskTile(
    //       taskTille: tasks[0].name,
    //       isChecked: tasks[0].isDone,
    //     ),
    //   TaskTile(taskTille: tasks[0].name,
    //       isChecked: tasks[0].isDone,),
    //   TaskTile(taskTille: tasks[0].name,
    //       isChecked: tasks[0].isDone,),
    //   ],
    // );
  }
}

