import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/screens/widgts/Task_item.dart';
import 'package:todo/styles/app-color.dart';

class TaskTab extends StatefulWidget {
  const TaskTab({Key? key}) : super(key: key);

  @override
  State<TaskTab> createState() => _TaskTabState();
}

class _TaskTabState extends State<TaskTab> {
  DateTime date=DateTime.now();
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        DatePicker(
          DateTime.now(),
          initialSelectedDate: DateTime.now(),
          selectionColor: lightColor,
          height: 100,
         // inactiveDates: [DateTime.now().add(Duration(days: 2))],

          selectedTextColor: Colors.white,
          onDateChange: (newDate) {
            // New date selected
            setState(() {
              date = newDate;
            });
          },
        ),
        Expanded(child: ListView.builder(

            itemBuilder: (context,index)
        {
         return TaskItem();
        },
        itemCount: 10,),
        )
      ],



    );



  }
}
