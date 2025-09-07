import 'package:flutter/material.dart';

import '../basicWidgets/DartCircleAvatarWidget.dart';
import '../dartCustomClass/DartCustomClassWidget.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int currentSelectedIndex = 0;
  final pages = [
    DartCustomClassWidget(),
    Dartcircleavatarwidget(),
    DartCustomClassWidget(),
    Dartcircleavatarwidget(),
  ];
   @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // loginData = ModalRoute.of(context)?.settings.arguments as Map;
    // print("Build Home called ${loginData}");
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Widget"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: pages[currentSelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentSelectedIndex,
          backgroundColor: Colors.blue,
          elevation: 100.0,
          selectedFontSize: 10.0 ,
          unselectedFontSize: 8.0,
          selectedItemColor: Colors.blue[200],
          unselectedItemColor: Colors.blue,
          selectedLabelStyle: TextStyle(
              color: Colors.black,
              fontSize: 8.0
          ),
          unselectedLabelStyle: TextStyle(
              color: Colors.black,
              fontSize: 10.0

          ),
          onTap: (itemIndex){
            setState(() {
              currentSelectedIndex = itemIndex;
            });

          },
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded),
                activeIcon: Icon(Icons.account_circle_outlined),
                label: 'Profile'),
            BottomNavigationBarItem(
                icon: Icon(Icons.email_outlined),
                activeIcon: Icon(Icons.email_rounded),
                label: 'Email'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_a_photo_outlined),
                activeIcon: Icon(Icons.add_a_photo_rounded),
                label: 'Time'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet_outlined),
                activeIcon: Icon(Icons.account_balance_wallet_rounded),
                label: 'Wallet'),

          ]),


    );
  }
}
