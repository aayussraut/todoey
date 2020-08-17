
class Task{
  bool isDone;
  final String taskName;
  Task({this.isDone=false,this.taskName});



  void toggleDone(){
    isDone=!isDone;
  }
}

