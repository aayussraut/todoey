import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';
import 'screen/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>TaskData(),

      child: MaterialApp(
        home: TasksScreen(),

      ),
    );
  }
}




