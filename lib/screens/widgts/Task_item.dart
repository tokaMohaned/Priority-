import 'package:date_picker_timeline/extra/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/styles/app-color.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
           // margin: EdgeInsets.symmetric(vertical: 8),
            elevation: 12,
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.transparent
              )
            ),
            child: Row(
             // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 100,
                  width: 5,
                  decoration: BoxDecoration(
                    color: lightColor,
                    borderRadius: BorderRadius.circular(4) ,

                  ),
                  margin: EdgeInsets.only(top:6,bottom: 22 ),

                ),
              SizedBox(width: MediaQuery.of(context).size.width*.05,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,//to begin in the same point
                  children: [
                    Text("Task title ",style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: lightColor,
                    ),),
                    Text("Task Description ",style: Theme.of(context).textTheme.bodyMedium,)
                  ],
                ),
                Spacer(),
                 Container(
                   margin: EdgeInsets.only(right: 16),//Empty space to surround the decoration and child.
                   padding: EdgeInsets.symmetric(horizontal:18,vertical: 3 ),
                     decoration: BoxDecoration(
                       color:lightColor,
                       borderRadius: BorderRadius.circular(12)
                     ),
                     child:
                 Icon(Icons.done,color: Colors.white,
                     size:30),),
              ],//row

    ),
          ),
        );
  }
}
