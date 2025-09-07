import 'package:flutter/material.dart';

class DartStateFullWidget extends StatefulWidget {
  const DartStateFullWidget({super.key});

  @override
  State<DartStateFullWidget> createState() => _DartStateFullrwidgetState();
}

class _DartStateFullrwidgetState extends State<DartStateFullWidget> {
  int age = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[800],
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text("Learn Circle Avatar"),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: (){
              setState(() {
                age++;
              });
            },
        child: Icon(
          Icons.add,
          color: Colors.grey[600],
        ),),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(40.0,80.0,40.0,0.0),

          child: Column(
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/image/login_bg.png",
                  ),
                  radius: 40.0,
                ),
              ),
              Divider(
                height: 100.0,
                color: Colors.grey[400],
              ),
              Row(
                children: <Widget>[
                  Text('Name',
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize:25.0,
                        letterSpacing: 2.0
                    ),),
                  SizedBox(width: 40.0,),
                  Text('Kamal Singh',
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize:25.0,
                        letterSpacing: 2.0
                    ),)

                ],
              ),
              SizedBox(height: 50.0,),
              Row(
                children: <Widget>[
                  Text('Age',
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize:25.0,
                        letterSpacing: 2.0
                    ),),
                  SizedBox(width: 40.0,),
                  Text('${age}',
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize:25.0,
                        letterSpacing: 2.0
                    ),)

                ],
              ),
              SizedBox(height: 50.0,),
              Row(
                children: <Widget>[
                  Text('Coding Level',
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize:25.0,
                        letterSpacing: 2.0
                    ),),
                  SizedBox(width: 40.0,),
                  Text('7',
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize:25.0,
                        letterSpacing: 2.0
                    ),)

                ],
              ),
              SizedBox(height: 40.0,),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email_outlined,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width: 5.0,),
                  Text('Email',
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize:25.0,
                        letterSpacing: 2.0
                    ),),
                  SizedBox(width: 40.0,),
                  Text('Kama1014@gmail.com',
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize:18.0,
                        letterSpacing: 2.0
                    ),)

                ],
              ),
              Divider(height: 100.0,
                color: Colors.grey[400],)

            ],


          ),
        ),
      ),
    );
  }
}
