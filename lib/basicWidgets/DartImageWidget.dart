

import 'package:flutter/material.dart';

class DartImageWidget extends StatelessWidget{
    const DartImageWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
      Scaffold(
      appBar: AppBar(
        title: Text('Learn Image Widget'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body : Center(
        child : Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 150.0,
              width: 150.0,
              color: Colors.red,
              padding: EdgeInsets.all(5.0),
              child: Center(
                child : Image.network(
                    "https://images.unsplash.com/photo-1690321608227-df2b9cf50821?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0",
                )
              ),
            ),
            Container(
              height: 150.0,
              width: 150.0,
              color: Colors.blue,
              padding: EdgeInsets.all(5.0),
              child: Center(
                  child : Image(
                    image: NetworkImage(
                    "https://images.unsplash.com/photo-1690321608227-df2b9cf50821?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0",
                    )
                  )
              ),
            ),
            Container(
              height: 150.0,
              width: 150.0,
              color: Colors.yellow,
              padding: EdgeInsets.all(5.0),
              child: Center(
                  child : Image(
                      image: AssetImage(
                        "assets/image/login_bg.png"
                      )
                  )
              ),
            ),
            Container(
              height: 150.0,
              width: 150.0,
              color: Colors.pink,
              padding: EdgeInsets.all(5.0),
              child: Center(
                  child : Image.asset("assets/image/login_bg.png")
              ),
            )

          ],
        ),
      )
    ),);

  }
}