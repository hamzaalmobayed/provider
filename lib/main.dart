import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_provider/ui/mainPage.dart';

import 'Providers/to_do_provider.dart';
import 'helpers/dbHelper.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
await DbHelper.dbHelper.initDataBase();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TodoProvider>(
      create: (context)=>TodoProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      ),
    );
  }
}

