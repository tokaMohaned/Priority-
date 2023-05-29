import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../styles/app-color.dart';
import '../../styles/app-color.dart';
import '../../styles/app-color.dart';
import '../../styles/app-color.dart';

class AddTaskBottomSheet extends StatefulWidget {
  AddTaskBottomSheet({Key? key}) : super(key: key);

  @override
  State<AddTaskBottomSheet> createState() => _AddTaskBottomSheetState();
}

class _AddTaskBottomSheetState extends State<AddTaskBottomSheet> {
var formKey=GlobalKey<FormState>();

String selected=DateTime.now().toString().substring(0,10);//default data
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Add new Task",
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.black),
            ),
            const SizedBox(
              height: 25,
            ),
            TextFormField(
              textInputAction: TextInputAction.next,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "pleae enter task title ";
                }else if(value.length<10)
                  {
                    return "please enter 10 charcter";
                  }
                return null;
              },
              decoration: InputDecoration(
                label: Text("Task Titile"),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: lightColor),
                  borderRadius: BorderRadius.circular(18),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: lightColor),
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              maxLines: 3,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "please enter task description";
                }
                return null;
              },
              decoration: InputDecoration(
                label: Text("Task description "),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: lightColor),
                  borderRadius: BorderRadius.circular(18),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: lightColor),
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: double.infinity, //it is tak all the width
              child: Text(
                "Select Date",
                textAlign: TextAlign.start,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.black),
              ),
            ),
            InkWell(
              onTap: (){
                chooseDate();
              },
              child: Text(
               selected,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: lightColor),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
                // style: ElevatedButton.styleFrom(
                //   fixedSize: Size(width, height)
                // ),
                onPressed: () {
                 if(formKey.currentState!.validate())
                 //here will be error if it is stateless so i have to make it statful
                {
                  print("good work");
                }
                },
                child: Text("Add Task")),
          ],
        ),
      ),
    );
  }
  void chooseDate()async
  {
    DateTime? selectedDate=await showDatePicker(
        context: context,
        builder: (context,child)=>
        Theme(data: Theme.of(context).copyWith(
          colorScheme: Theme.of(context).colorScheme!.copyWith(
            primary: lightColor,
            onPrimary: greenColor,
              onSurface: Colors.black,
          )
        ), child: child!),
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365)));
      if(selectedDate!=null)
        {
          selected=selectedDate.toString().substring(0,10);
          setState(() {

          });
        }
  }
}
