

import 'package:flutter/material.dart';

class DartButtonWidget extends StatelessWidget{
    const DartButtonWidget({super.key});

    @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return MaterialApp(
        home: Scaffold(

          appBar: AppBar(
            title: Text('Learn Button Widget'),
            centerTitle: true,
            backgroundColor: Colors.green,
          ),
          body: Center(

            child : Container(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                        ElevatedButton(
                  onLongPress: (){
                            print("Elevated Button Long Press");
                          },
                          onPressed: (){
                            print("Elevated Button Press");
                          },
                          child: Text('Elevated Button',),
                        ),
                    ElevatedButton.icon(
                      onLongPress: (){
                        print("Elevated Icon Button Long Press");
                      },
                      onPressed: (){
                        print("Elevated Icon Button Press");
                      },
                      icon: Icon(Icons.account_balance)
                      ,
                      label: Text('Elevated Icon Button',),
                    ),
                    TextButton(
                      onLongPress: (){
                        print("Text Button Long Press");
                      },
                      onPressed: (){
                        print("Text Button Press");
                      },
                      child: Text('Text Button',),
                    ), TextButton.icon(
                      onLongPress: (){
                        print("Text Icon Button Long Press");
                      },
                      onPressed: (){
                        print("Text Icon Button Press");
                      },
                      icon: Icon(Icons.account_balance)
                      ,
                      label: Text('Text Icon Button',),
                    ), IconButton(
                      onLongPress: (){
                        print("Icon Button Long Press");
                      },
                      onPressed: (){
                        print("Icon Button Press");
                      },
                      icon: Icon(Icons.account_circle)
                      ,color: Colors.blue,
                    ),

                  ],
              ),
            )

          ),
        ),
      );
  }


}