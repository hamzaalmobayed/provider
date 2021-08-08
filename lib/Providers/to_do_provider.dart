

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:task_provider/Models/task_model.dart';
import 'package:task_provider/helpers/dbHelper.dart';

class TodoProvider extends ChangeNotifier{
  String test ='Hamza';
  List<Task_model> alltasks;
  List<Task_model> complete;
  List<Task_model> inComplete;

  TodoProvider(){
    getAllTasks();
  }

  changeTest(String name){
    this.test=name;
    notifyListeners();
  }
  List<Task_model> allTasks;
  getAllTasks()async{
   this.alltasks= await DbHelper.dbHelper.getAllTasks();
   this.complete=alltasks.where((element) => element.isComplete).toList();
   this.complete=alltasks.where((element) => !element.isComplete).toList();
   notifyListeners();
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