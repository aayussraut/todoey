import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';



class AppListScreen extends StatelessWidget {


  @override

  Widget build(BuildContext context) {
    String newTaskName;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 50),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0
              ),
            ),
           TextField(
             autofocus: true,
             textAlign: TextAlign.center,
             onChanged: (value){

               newTaskName=value;

             },
           ),
            SizedBox(height: 15,),
            FlatButton(onPressed: (){
              Provider.of<TaskData>(context,listen: false).addNewTask(newTaskName);
              Navigator.pop(context);
            }, child:
            Text('Add',style:TextStyle(color: Colors.white),),
            color: Colors.lightBlueAccent,)
          ],
        ),
      ),
    );
  }
}
