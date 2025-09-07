


import 'package:flutter/material.dart';

class DartLoginStatelessWidget extends StatelessWidget{

  const DartLoginStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar : AppBar(
              backgroundColor: Colors.green,
              title : Text('Learn Stateless Widget'),
              centerTitle: true,
            ),
          body: Center(

            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    height: 50.0,
                    width: double.infinity,
                    margin: EdgeInsets.fromLTRB(40.0,0.0,40.0,0.0),
                    child: Text('Username'),
                  ),
                  Container(
                    height: 50.0,
                    width: double.infinity,
                    margin: EdgeInsets.fromLTRB(40.0,40.0,40.0,0.0),
                    child: Text('Password'),
                  ),
                  Container(
                    height: 50.0,
                    width: double.infinity,
                    margin: EdgeInsets.fromLTRB(40.0,40.0,40.0,0.0),
                    child: Text('Login Button'),
                  )

                ],

              ),
            ),
          ),

    );
  }




}