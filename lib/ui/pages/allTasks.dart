import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_provider/Models/task_model.dart';
import 'package:task_provider/Providers/to_do_provider.dart';
import 'package:task_provider/Widgets/task_widgets.dart';


class AllTasks extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Provider.of<TodoProvider>(context).alltasks.length,
      itemBuilder: (context, index) {
        return TaskWidget(Provider.of<TodoProvider>(context).alltasks[index],);
      },
    );
  }
}
