class Task {
String name;
bool done;

Task({this.name,this.done=false});

 toggleTaskDone(){
  done=!done;
}


}