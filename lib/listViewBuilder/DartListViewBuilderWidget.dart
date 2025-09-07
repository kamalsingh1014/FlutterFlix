import 'package:flutter/material.dart';



class DartListViewBuildWidget extends StatefulWidget {
  const DartListViewBuildWidget({super.key});

  @override
  State<DartListViewBuildWidget> createState() => _DartListViewBuildWidgetState();
}

class _DartListViewBuildWidgetState extends State<DartListViewBuildWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Learn ListView Builder Widget'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.fromLTRB(10.0,40.0,10.0,0.0),
              child: Card(
                color: Colors.blue,
                shadowColor: Colors.yellow,
                elevation: 20.0,
                child : ListTile(
                  onTap: (){
                    print("Item tapped : ${index}");
                  },
                    onLongPress: (){
                      print("Item long pressed : ${index}");
                    },
                  contentPadding: EdgeInsets.fromLTRB(20.0,10.0,20.0,10.0),
                     leading: CircleAvatar(
                       backgroundColor: Colors.blue,
                         backgroundImage:  AssetImage("assets/image/login_bg.png")
                     ),
                      title: Text("Index $index"))
                ,
              ),
            );
          },
        ),
      ),
    );
  }
}
