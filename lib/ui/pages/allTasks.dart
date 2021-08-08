import 'package:flutter/material.dart';
import 'package:task_provider/Models/task_model.dart';
import 'package:task_provider/Widgets/task_widgets.dart';


class AllTasks extends StatelessWidget {
  List<Task_model> tasks;
  Function deleteFun, updateFun;

  AllTasks(this.tasks, this.deleteFun, this.updateFun);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskWidget(tasks[index], updateFun, deleteFun);
      },
    );
  }
}
