
import 'package:flutter/material.dart';
import 'package:fun_flix/basicWidgets/DartStateLessWidget.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home : DartLoginStatelessWidget() ,
));
}

class DartMaterialAppContent extends StatelessWidget{
  const DartMaterialAppContent({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar : AppBar(
            title: Text("Learn Material App"),
            titleSpacing: 20.0,
            centerTitle: true,
            backgroundColor: Colors.pink[100],
          ),
      body : Center(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color : Colors.blue,
                  child : Center(
                    child: Text("Center -> Container -> Text"),
                  )
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        print("Click Me!");
        },
                child:   Text("Click",
                style: TextStyle(
                  color : Colors.green[900],
                  letterSpacing: 1.0,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'StoryScript',
                ),),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked, //To align floating action button at bottom right.
    );
    
  }



}
