import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/screens/widgts/addTaskBottomSheet.dart';
import 'package:todo/screens/widgts/setting_tab.dart';

import '../screens/widgts/task_tab.dart';


class HomeLyaout extends StatefulWidget {
  static const String routeName="HomeLayout";
   HomeLyaout({Key? key}) : super(key: key);

  @override
  State<HomeLyaout> createState() => _HomeLyaoutState();
}

class _HomeLyaoutState extends State<HomeLyaout> {
 int index=0;

   List <Widget>tabs=[
     TaskTab(),
     SettingTab(),
   ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      extendBody: true,
      appBar: AppBar(
        //toolbarHeight: 120,
           title: const Text("Todo App"),
      ),
      body: tabs[index],//to get the pages of the

      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerDocked,
      //to change the location of flating action button
      floatingActionButton: FloatingActionButton(
        shape: const StadiumBorder(
          side: BorderSide(
            color: Colors.white,
            width: 4,//width of the border

          )
        ),
          onPressed: (){
          showAddTaskSheet();
          },
        child: const Icon(Icons.add,size: 30,)),

      bottomNavigationBar:
      BottomAppBar(
        notchMargin: 8,//it is make the shape
        shape: const CircularNotchedRectangle(),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,//to display the  shape of the
          //bottomAppBar
          elevation: 0,
          iconSize: 30,
          currentIndex: index,
          onTap: (value)// the valeu is the number of the page that is the index
          {

            index=value;
            setState(() {});
          },
          items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list),
            label: " ",//i must put lable or it will make error
          ),

            BottomNavigationBarItem(icon: Icon(Icons.settings),
            label: "",
            ),

        ],

        ),
      ),
    );
  }
 void showAddTaskSheet()
 {
   showModalBottomSheet(//it is for bottomsheet
       context: context,
       isScrollControlled:true,
       builder: (context)=>
   Padding(
     padding:  EdgeInsets.only(
         bottom: MediaQuery.of(context).viewInsets.bottom),
     // خد مساحه على قد الشكل الي هيطلعلك
     child: AddTaskBottomSheet(),
   )
   ,);

 }
}


