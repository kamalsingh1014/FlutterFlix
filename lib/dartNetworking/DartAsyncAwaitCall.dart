import 'package:flutter/material.dart';
import 'package:http/http.dart';


Future<void> callFlutterNotes() async {

  print("Fetching Credentials....");
  String username = await Future.delayed( Duration(seconds: 3),(){
    return "Kamal";
  });
  String password = await Future.delayed(Duration(seconds: 2),(){
    return 'KamalSingh';
  });
  print("Username - ${username}  & Password - ${password}");


}








class MyFlutLab extends StatefulWidget {
  const MyFlutLab({super.key});


  @override
  State<MyFlutLab> createState() => _MyFlutLabState();
}

class _MyFlutLabState extends State<MyFlutLab> {
  void callFlutterTodo() async{
    Response response = await get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
    print("Api response : ${response.body}");

  }

  @override
  void initState() {
    super.initState();
    callFlutterNotes();
    print("Building Widgets.....");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: (){
              callFlutterTodo();
            },
        child: Icon(
          Icons.dashboard_customize,
          color: Colors.blue,
        ),),
        appBar: AppBar(
          title: Text('Learn Network Call'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Container(
          color: Colors.grey[400],
        ),
      ),
    );
  }
}


