class TaskModel{
  String id;
  String title;
  String description;
  int date;
  bool status;

    TaskModel({
      this.id="",
    required this.title,
    required this.description,
    required this.date,
    required this.status});

    //i can replace function fromJson by named constructor take map and return
  //model
    TaskModel.fromJson(Map<String,dynamic>json):this
      //this mean get the defualt constructor
        (
        id: json['id'],
        title: json['title'],
        description: json['description'],
        date: json['date'],
        status: json['status']);

    ////here i want to take map and change it to model
  ////fromJson used when firebase give me the data in map

// TaskModel fromJson(Map<String, dynamic> json)//the name of map josn
// {
//   TaskModel taskModel=TaskModel(//obj form taskModel
//     // key  :   value
//     id: json['id'],
//       title: json['title'],
//       description: json['description'],
//       date: json['date'],
//       status: json['status']);
//   return taskModel;
// }
  /////////////////////////////////////////////
//here i have model and change it to map
  //this function used when i have data will send to firebase so i have to return it in map
//so i will call the model tojson to return map
  Map<String,dynamic> toJson()
{
  return{
 "id":id,
    "title":title,
    "description":description,
    "date":date,
    "status":status,

  };
}
}