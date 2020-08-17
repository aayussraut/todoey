import 'package:flutter/material.dart';

class ListTIle extends StatelessWidget {

  final String taskName;
  final bool isChecked;
  final Function checkboxState;
  final Function longPressCallBack;
  ListTIle({this.isChecked,this.taskName,this.checkboxState,this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(taskName,
      style: TextStyle(
        decoration: isChecked? TextDecoration.lineThrough:null
      ),),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged:checkboxState,
      ),

    );
  }
}

//class TaskCheckBox extends StatelessWidget {
//
//  final bool checkboxState;
//  final Function toggleCheckBoxState;
//  TaskCheckBox({this.checkboxState,this.toggleCheckBoxState});
//
//  @override
//  Widget build(BuildContext context) {
//    return Checkbox(
//      activeColor: Colors.lightBlueAccent,
//      value: checkboxState,
//    onChanged:toggleCheckBoxState
//    );
//
//  }
//}