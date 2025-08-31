
import 'package:flutter/material.dart';


class DartDrawerWidget extends StatefulWidget {
  const DartDrawerWidget({super.key});

  @override
  State<DartDrawerWidget> createState() => _DartDrawerWidgetState();
}

class _DartDrawerWidgetState extends State<DartDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Learn Drawer Widget'),
          centerTitle: true,
          backgroundColor: Colors.blue,
          leading: Builder(
              builder: (context){
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: (){
                print("Menu is open via leading icon");
                Scaffold.of(context).openDrawer();
              },

            );
        },
        ),),
        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
                onPressed: (){
                  print("Menu is open via Floating Action Button");
                  Scaffold.of(context).openDrawer();
                },
                child: Text("Open Drawer"),
            );
          }
        ),
        drawer: Drawer(
          backgroundColor: Colors.grey[700],
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: ListView(
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    // image: Image.asset("assets/image/login_bg.png")
                    color: Colors.blue,
                  ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage(
                                      'assets/image/login_bg.png'),
                            backgroundColor: Colors.blue,
                             ),
                          Text('Kamal Singh',
                          style: TextStyle(
                            color: Colors.purple,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w100,
                            fontStyle: FontStyle.italic
                          ),)

                        ],

                      ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0,0,10.0,0),
                  child: Divider(height: 50.0,
                  color: Colors.grey[200],),
                ),
                Column(
                  children: <Widget>[
                    Card(
                      borderOnForeground: true,
                      color: Colors.blue[400],
                      elevation: 20.0,
                      shadowColor: Colors.blue[200],
                      child :Row(
                        children:<Widget> [
                          Icon(
                            Icons.account_balance_wallet,
                            color: Colors.blue[900],
                          )  ,
                          SizedBox(width: 5.0,),
                          Text('Wallet',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w200
                            ) ,)
                        ],
                      )

                    ),
                    SizedBox(height: 20.0,),
                    Card(
                        borderOnForeground: true,
                        color: Colors.blue[400],
                        elevation: 20.0,
                        shadowColor: Colors.blue[200],
                        child :Row(
                          children:<Widget> [
                            Builder(
                              builder: (context) {
                                return IconButton(
                                  icon : const Icon(Icons.logout),
                                  color: Colors.blue[900],
                                  onPressed: (){
                                    Navigator.pop(context);
                                  },
                                );
                              }
                            )  ,
                            SizedBox(width: 5.0,),
                            Text('Logout',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w200
                              ) ,)
                          ],
                        )

                    )



                  ],

                )



              ],
            ),
          ),
        ),
      ),
    );
  }
}
