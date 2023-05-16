// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class AddTaskBottomSheet extends StatelessWidget {
//    AddTaskBottomSheet({Key? key}) : super(key: key);
// String selected=;//default data
//   @override
//   Widget build(BuildContext context) {
//     return  Column(
//       children: [
//         Text("Add new Task"),
//        SizedBox(height: 15,),
//         TextFormField(
//           validator: (value){
//             if(value==null|| value.isEmpty)
//               {
//                 return "pleae enter task";
//               }
//           },
//           decoration: InputDecoration(
//
//           ),
//
//         ),
//         SizedBox(height: 15,),
//         Container(
//           width: double.infinity,
//           child: Text("Select Date"),
//         )
//
//       ],
//     );
//   }
//   void chooseDate() async
//   {
//     DateTime? selectedDate = await showDatePicker(context: context,
//         initialDate: DateTime.now(),
//         firstDate: DateTime.now(),
//         lastDate: DateTime.now().add(Duration(days: 365)));
//          if(selectedDate!=null)
//   }
// }
