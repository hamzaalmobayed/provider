

import 'package:flutter/cupertino.dart';
import 'package:task_provider/Models/task_model.dart';
import 'package:task_provider/helpers/dbHelper.dart';

class TodoProvider extends ChangeNotifier{
  String test ='Hamza';
  changeTest(String name){
    this.test=name;
    notifyListeners();
  }
  List<Task_model> alltasks;
  getAllTasks()async{
   this.alltasks= await DbHelper.dbHelper.getAllTasks();
  }
  insertTasks(Task_model task_model)async{
    await DbHelper.dbHelper.createNewTask(task_model);
    getAllTasks();
  }
  deleteTask(Task_model task_model)async{
    await DbHelper.dbHelper.deleteTask(task_model);
    getAllTasks();
  }
  updateTask(Task_model task_model)async{
    await DbHelper.dbHelper.updateTask(task_model);
    getAllTasks();
  }
}