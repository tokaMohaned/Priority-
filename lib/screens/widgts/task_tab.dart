import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/screens/widgts/Task_item.dart';

class TaskTab extends StatefulWidget {
  const TaskTab({Key? key}) : super(key: key);

  @override
  State<TaskTab> createState() => _TaskTabState();
}

class _TaskTabState extends State<TaskTab> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      // children: <Widget>[
      //   DatePicker(
      //     DateTime.now(),
      //     initialSelectedDate: DateTime.now(),
      //     selectionColor: Colors.black,
      //     selectedTextColor: Colors.white,
      //     onDateChange: (date) {
      //       // New date selected
      //       setState(() {
      //         _selectedValue = date;
      //       });
      //     },
      //   ),
        // Expanded(child:
        // ListView.builder(
        //     itemBuilder: TaskItem())
        // )
      //],
    );



  }
}
