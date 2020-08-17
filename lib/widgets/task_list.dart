import 'package:flutter/material.dart';
import 'package:todoey/widgets/list_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TaskList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child){
        return ListView.builder(
          itemBuilder: (context, index) {
            final task=taskData.task[index];
            return ListTIle(
              taskName: task.taskName,
              isChecked: task.isDone,
              checkboxState: (checkboxstate) {
                taskData.updateCheckBox(task);
              },
              longPressCallBack: (){
                taskData.deleteData(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },


    );
  }
}
