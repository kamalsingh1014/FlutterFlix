
import 'dart:math';

import 'package:flutter/material.dart';

class DartAnimatedContainer extends StatefulWidget {
  const DartAnimatedContainer({super.key});

  @override
  State<DartAnimatedContainer> createState() => _DartAnimatedContainerState();
}

class _DartAnimatedContainerState extends State<DartAnimatedContainer> {

  double _width = 100.0;
  double _height = 100.0;
  bool isOdd = false;
  Color _color = Colors.green;
  BorderRadiusGeometry _border = BorderRadius.circular(20.0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Learn Animated Container Widget'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: AnimatedContainer(
              width:_width ,
              height: _height,
              decoration: BoxDecoration(
                color: _color,
                borderRadius: _border
              ),
              duration: Duration(seconds: 1)),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: (){
              setState(() {
                isOdd = !isOdd;
                _width = isOdd?200.0:50.0;
                _height = isOdd?200.0:50.0;
                _border = BorderRadius.circular(isOdd?100.0:20.0);
                _color = Color.fromRGBO(
                   Random().nextInt(256),
                   Random().nextInt(256),
                   Random().nextInt(256),
                  1
                );
              });
            }),
      ),
    );
  }
}
