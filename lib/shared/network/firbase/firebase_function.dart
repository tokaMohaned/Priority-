
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:todo/model/task_model.dart';
class FireBaeFunctions{

  //to create tasks collection
  static CollectionReference<TaskModel> getTasksCollection()
  {
   return FirebaseFirestore.instance.collection("Tasks").
    withConverter<TaskModel>(
      fromFirestore: (snapshot,_)=>TaskModel.fromJson(snapshot.data()!),
      toFirestore: (task,option)=>task.toJson(),);
  }
 static Future<void> addTaskToFirestore(TaskModel task){
    //here it will make collection of task
    var collection=getTasksCollection();
    //to create document
    var docRef=collection.doc();//create doc
    task.id=docRef.id;//put the id of document in the task id
    return docRef.set(task);//put the task in the document
  }

  static Stream<QuerySnapshot<TaskModel>> getTaskFromFirestore(DateTime date)
  {
    var collection= getTasksCollection();
    return collection.where("date",isEqualTo:DateUtils.dateOnly(date).millisecondsSinceEpoch)
        .snapshots();
    //type of get function is Future<QuerySnapshot<TaskModel>>

  }

  static Future<void> deleteTask(String id)
  {
    return getTasksCollection().doc(id).delete();
  }

  static Future<void> updateTask(String id,TaskModel task)
  {
    return getTasksCollection().doc(id).update(task.toJson());
  }

}//class