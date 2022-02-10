// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/screens/add_task_screen.dart';

import '../widgets/tasks_list.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({ Key? key }) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
List <Task> tasks =[
    Task(name: 'dvxxcv'),
    Task(name: 'naxcvxcvme'),
    Task(name: 'naxvxcvme'),
    Task(name: 'naxcvxcvxme'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,floatingActionButton:FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
          builder: (context)=> SingleChildScrollView(
            child: Container(
              padding:EdgeInsets.only(
                bottom: MediaQuery.of(context).
                viewInsets.bottom),
                child: AddTaskScreen((newTaskTitle){
                  setState(() {
                    tasks.add(Task(name: newTaskTitle));
                    Navigator.pop(context);
                  });
                  
                })
              ),
            ),
          );
        },
        backgroundColor: Colors.indigo[700],
        child: Icon(Icons.add),
        ) ,
      backgroundColor: Colors.teal[400],
      body: Container(
        padding: const EdgeInsets.only(top: 60,left: 20,right:20,bottom: 80 ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.playlist_add_check,size: 40,color: Colors.white,),
                SizedBox(width: 20,),
                Text(
                  'ToDayDo',
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  
                ),)
              ],
            ),
            Text(
              'Tasks',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              ),
              SizedBox(height: 20),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              ),
              child: TasksList(tasks),
            ),
          )
          ],
        ),
      ),
    );
  }
}

