import 'package:flutter/material.dart';
import 'package:fun_flix/dartCustomClass/ProfileCustomClass.dart';


class DartCustomClassWidget extends StatefulWidget {
  const DartCustomClassWidget({super.key});

  @override
  State<DartCustomClassWidget> createState() => _DartCustomClassWidgetState();
}

class _DartCustomClassWidgetState extends State<DartCustomClassWidget> {
  List<ProfileCustomClass> profileList = [
    ProfileCustomClass(name: "Kamal Singh", age: "29"),
    ProfileCustomClass(name: "Ankit Rawat", age: "30"),
    ProfileCustomClass(name: "Jitin Tyagi", age: "31"),
    ProfileCustomClass(name: "Prem Sarkar", age: "28"),
    ProfileCustomClass(name: "Monu Ansari", age: "29"),

  ];

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: profileList.map((it){
            return
              Container(
              margin: EdgeInsets.all(10.0),
              color: Colors.yellow,
              padding: EdgeInsets.all(20.0),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 40.0,
                        backgroundImage: AssetImage("assets/image/login_bg.png"),
                      ),
                      SizedBox(width: 50.0,),
                      Column(
                        children: <Widget>[
                      Text("${it.name}",style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.purple
                      ),
                      ), Text("${it.age}",style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.purple
                          ),),
                        ]
                     ),
                    ],
                  ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
