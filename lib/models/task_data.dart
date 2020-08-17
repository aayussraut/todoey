import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> _task = [Task(taskName: 'buy milk'), Task(taskName: 'buy potato')];


  UnmodifiableListView get task{
    return UnmodifiableListView(_task);
  }

  int  get taskCount{
    return _task.length;
  }

  void updateCheckBox(Task task)
  {
    task.toggleDone();
    notifyListeners();
  }

  void deleteData(Task task){
    _task.remove(task);
    notifyListeners();
  }

  void addNewTask(String newTaskName){
    _task.add(Task(taskName: newTaskName));
    notifyListeners();
  }
}