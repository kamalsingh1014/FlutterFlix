import 'package:flutter/material.dart';


Widget routingWidget(){
  return MaterialApp(
    initialRoute: '/login',
    routes: {
      '/': (context) => LoginRouting(),
      '/home': (context) => HomeRouting(),
      '/dashboard': (context) => DashboardRouting(),
    },
  );
}

class RoutingWidget extends StatelessWidget {
  const RoutingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginRouting(),
        '/home': (context) => HomeRouting(),
        '/dashboard': (context) => DashboardRouting(),
      },
    );
  }
}





class LoginRouting extends StatefulWidget {
  const LoginRouting({super.key});

  @override
  State<LoginRouting> createState() => _LoginRoutingState();
}

class _LoginRoutingState extends State<LoginRouting> {

  @override
  void initState() {
    super.initState();
    print("InitState Login called ");
  }

  @override
  Widget build(BuildContext context) {
    print("Build Login called ");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login Screen"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child : Card(
            child: Text('Login Screen'),
          )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print("Login Floating Button");
            Navigator.pushNamed(context, '/home');
          },
          child: Icon(
            Icons.home,
            color: Colors.blue,
          ),),
      ),
    );
  }
}



class HomeRouting extends StatefulWidget {
  const HomeRouting({super.key});

  @override
  State<HomeRouting> createState() => _HomeRoutingState();
}

class _HomeRoutingState extends State<HomeRouting> {

  @override
  void initState() {
    super.initState();
    print("InitState Home called ");
  }

  @override
  Widget build(BuildContext context) {
    print("Build Home called ");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home Screen"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
            child : Card(
              child: Text('Home Screen'),
            )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print("Home Floating Button");
            Navigator.pushNamed(context, '/dashboard');
          },
          child: Icon(
            Icons.dashboard,
            color: Colors.blue,
          ),),
      ),
    );
  }
}


class DashboardRouting extends StatefulWidget {
  const DashboardRouting({super.key});

  @override
  State<DashboardRouting> createState() => _DashboardRoutingState();
}

class _DashboardRoutingState extends State<DashboardRouting> {
  @override
  void initState() {
    super.initState();
    print("InitState Dashboard called ");
  }

  @override
  Widget build(BuildContext context) {
    print("Build Dashboard called ");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dashboard Screen"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          elevation: 0,
        ),
        body: Center(
            child : Card(
              child: Text('Dashboard Screen'),
            )
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: (){
              print("Dashboard Floating Button");
              Navigator.pushNamed(context, '/login');
            },
        child: Icon(
          Icons.login,
          color: Colors.blue,
        ),),
      ),
    );
  }
}
