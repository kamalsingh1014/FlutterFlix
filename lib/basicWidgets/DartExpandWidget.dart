import 'package:flutter/material.dart';

class DartExpandWidget extends StatelessWidget{
  const DartExpandWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Learn Expand Widget'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Row(
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Image(
                image:AssetImage('assets/image/login_bg.png')
            )),
            Expanded(
                flex: 1,
                child: Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.blue,
              child: Text('1'),

            )),
            Expanded(
                flex: 1,
                child: Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.yellow,
              child: Text('2'),

            )),
            Expanded(
                flex: 1,
                child: Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.pink,
              child: Text('3'),

            ))


          ],


        ),
      ),
    );
  }

}