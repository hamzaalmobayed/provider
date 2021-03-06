import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_provider/Models/task_model.dart';
import 'package:task_provider/Providers/to_do_provider.dart';


class newTaskpage extends StatefulWidget {


  @override
  _newTaskpageState createState() => _newTaskpageState();
}

class _newTaskpageState extends State<newTaskpage> {
  bool isComplete = false;

  String taskName;

  SaveTask() {
    Provider.of<TodoProvider>(context).insertTasks(Task_model(taskName: taskName, isComplete: isComplete));
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Task'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Text('Insert New Task'),
            TextField(
              onChanged: (v) {
                this.taskName = v;
              },
              decoration: InputDecoration(
                  labelText: 'Task Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            Checkbox(
                value: isComplete,
                onChanged: (v) {
                  this.isComplete = v;
                  setState(() {});
                }),
            RaisedButton(
              onPressed: () {
                SaveTask();
              },
              child: Text('Insert New Task'),
            )
          ],
        ),
      ),
    );
  }
}
