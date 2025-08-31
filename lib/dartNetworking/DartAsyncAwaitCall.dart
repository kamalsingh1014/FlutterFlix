import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';


import 'package:http/http.dart' as http;


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
  String name = 'Loading';
  void callFlutterTodo() async{
    Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'),
      headers: {
      'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', // A common browser User-Agent
      'Accept': 'application/json', // Good practice to specify what you accept
      },

    );
    print("Api status code  : ${response.statusCode}");
    print("Api response : ${response.body}");
    List<dynamic> data = jsonDecode(response.body);
    if(data.isNotEmpty){
      for(int i = 0;i<data.length;i++) {
        print("  Api Json Object :  ${data[i]}");
      }
      Map mapJsonObject = data[0];
      setState(() {
       name = mapJsonObject['name'];
      });
    }
   // Add extra hours to current time
    DateTime dateTime =DateTime.parse("2025-08-31 12:10:20");
    print("Date and Time before addig extra time : ${dateTime}");
    dateTime = dateTime.add(Duration(hours: 2));
    print("Date and Time before after extra time : ${dateTime}");
    print("Date format changed : ${DateFormat.jm().format(dateTime)}");


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
          child: Center(
            child: Text(name,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 25.0
            ),),
          ),
        ),
      ),
    );
  }
}




