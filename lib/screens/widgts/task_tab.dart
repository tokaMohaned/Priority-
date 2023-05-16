// import 'package:flutter/cupertino.dart';
// import 'package:todo/screens/widgts/Task_item.dart';
//
// class TaskTab extends StatelessWidget {
//   const TaskTab({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return  CColumn(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         DatePicker(
//           DateTime.now(),
//           initialSelectedDate: DateTime.now(),
//           selectionColor: Colors.black,
//           selectedTextColor: Colors.white,
//           onDateChange: (date) {
//             // New date selected
//             setState(() {
//               _selectedValue = date;
//             });
//           },
//         ),
//         Expanded(child:
//         ListView.builder(
//             itemBuilder: TaskItem())
//         )
//       ],
//     );
//
//
//
//   }
// }
