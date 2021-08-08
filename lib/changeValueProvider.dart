import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Providers/to_do_provider.dart';
class UiProvider extends StatefulWidget {

  @override
  _UiProviderState createState() => _UiProviderState();
}

class _UiProviderState extends State<UiProvider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(Provider.of<TodoProvider>(context).test),
          ElevatedButton(onPressed: (){
            Provider.of<TodoProvider>(context,listen: false).changeTest("hamza");
          }, child: Text("change"))
        ],
      ),
    );
  }
}
