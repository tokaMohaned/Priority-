import 'package:date_picker_timeline/extra/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo/model/task_model.dart';
import 'package:todo/shared/network/firbase/firebase_function.dart';
import 'package:todo/styles/app-color.dart';

class TaskItem extends StatelessWidget {
TaskModel task;
TaskItem(this.task);
  @override
  Widget build(BuildContext context) {
    return
        Card(
          elevation: 12,
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.transparent)
          ),
          child: Slidable(
            startActionPane: ActionPane(
              motion: StretchMotion(),
            children: [
              SlidableAction(onPressed: (context){
                FireBaeFunctions.deleteTask(task.id);
              },
              label: "Delet",
                autoClose: true,
                //flex: 2,
               // padding: EdgeInsets.zero,
                icon: Icons.delete,
                backgroundColor: Colors.red,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
                ),
              ),

              SlidableAction(onPressed: (context){
               // FireBaeFunctions.updateTask(task.id, task);
              },
                label: "Edit",
                icon: Icons.edit ,
                backgroundColor: Colors.blue,

              ),

            ],),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child:
              Row(
               // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 100,
                    width: 5,
                    decoration: BoxDecoration(
                      color: task.status?greenColor:lightColor,
                      borderRadius: BorderRadius.circular(4) ,

                    ),
                    margin: EdgeInsets.only(top:6,bottom: 22 ),

                  ),
                SizedBox(width: MediaQuery.of(context).size.width*.05,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,//to begin in the same point
                    children: [
                      Text(task.title,style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: task.status?greenColor:lightColor,
                      ),),
                      Text(task.description,style: Theme.of(context).textTheme.bodyMedium,)
                    ],
                  ),
                  Spacer(),
                   task.status?
                       Text("Done!",style: Theme.of(context).textTheme.bodyLarge!.
                         copyWith(color:greenColor ),):
                   InkWell(
                     onTap: (){
                       task.status=true;
                       FireBaeFunctions.updateTask(task.id, task);
                     },
                     child: Container(
                       margin: EdgeInsets.only(right: 16),//Empty space to surround the decoration and child.
                       padding: EdgeInsets.symmetric(horizontal:18,vertical: 3 ),
                         decoration: BoxDecoration(
                           color:lightColor,
                           borderRadius: BorderRadius.circular(12)
                         ),
                         child:
                     Icon(Icons.done,color: Colors.white,
                         size:30),),
                   ),
                ],//row


    ),
            ),
          ),
        );
  }
}
