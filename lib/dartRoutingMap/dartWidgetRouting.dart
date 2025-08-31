import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


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
      initialRoute: '/loading',
      routes: {
        '/loading': (context) => LoadingRouting(),
        '/login': (context) => LoginRouting(),
        '/home': (context) => HomeRouting(),
        '/dashboard': (context) => DashboardRouting(),
      },
    );
  }
}

void switchToLogin(BuildContext context) async{
  await Future.delayed(Duration(seconds: 5));
  print("Ready for login");
  Navigator.pushNamed(context, '/login');
}

class LoadingRouting extends StatefulWidget {
  const LoadingRouting({super.key});

  @override
  State<LoadingRouting> createState() => _LoadingRoutingState();
}

class _LoadingRoutingState extends State<LoadingRouting> {

  @override
  void initState() {
    super.initState();
    print("InitState Loading called ");
    switchToLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    print("Build Loading called ");
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[900],
          body:
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0,40.0 ,0.0,0.0),
                child: SpinKitPouringHourGlass(
                  color: Colors.white,
                  size: 50.0,
                ),
                // child: Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: <Widget>[
                //     Column(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Text("SpinKitCircle"),
                //         SpinKitCircle(
                //           color: Colors.white,
                //           size: 10.0,
                //         ),
                //         SizedBox(height: 5.0,),
                //         Text("SpinKitChasingDots"),
                //         SpinKitChasingDots(
                //           color: Colors.white,
                //           size: 10.0,
                //         ),
                //         SizedBox(height: 5.0,),
                //         Text("SpinKitCubeGrid"),
                //         SpinKitCubeGrid(
                //           color: Colors.white,
                //           size: 10.0,
                //         ),
                //         SizedBox(height: 5.0,),
                //         Text("SpinKitDoubleBounce"),
                //         SpinKitDoubleBounce(
                //           color: Colors.white,
                //           size: 10.0,
                //         ),
                //         SizedBox(height: 5.0,),
                //         Text("SpinKitDancingSquare"),
                //         SpinKitDancingSquare(
                //           color: Colors.white,
                //           size: 10.0,
                //         ),
                //         SizedBox(height: 5.0,),
                //         Text("SpinKitDualRing"),
                //         SpinKitDualRing(
                //           color: Colors.white,
                //           size: 10.0,
                //         ),
                //         SizedBox(height: 5.0,),
                //         Text("SpinKitHourGlass"),
                //         SpinKitHourGlass(
                //           color: Colors.white,
                //           size: 10.0,
                //         ),
                //         SizedBox(height: 5.0,),
                //         Text("SpinKitRing"),
                //         SpinKitRing(
                //           color: Colors.white,
                //           size: 10.0,
                //         ),
                //         SizedBox(height: 5.0,),
                //         Text("SpinKitRipple"),
                //         SpinKitRipple(
                //           color: Colors.white,
                //           size: 10.0,
                //         ),
                //         SizedBox(height: 5.0,),
                //         Text("SpinKitRotatingCircle"),
                //         SpinKitRotatingCircle(
                //           color: Colors.white,
                //           size: 10.0,
                //         ),
                //         SizedBox(height: 5.0,),
                //         Text("SpinKitRotatingPlain"),
                //         SpinKitRotatingPlain(
                //           color: Colors.white,
                //           size: 10.0,
                //         ),
                //         SizedBox(height: 5.0,),
                //       ],
                //     ),
                //     Column(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Text("SpinKitSpinningCircle"),
                //         SpinKitSpinningCircle(
                //           color: Colors.white,
                //           size: 10.0,
                //         ),
                //         SizedBox(height: 10.0,),
                //         Text("SpinKitSpinningLines"),
                //         SpinKitSpinningLines(
                //           color: Colors.white,
                //           size: 10.0,
                //         ),
                //         SizedBox(height: 10.0,),
                //         Text("SpinKitSquareCircle"),
                //         SpinKitSquareCircle(
                //           color: Colors.white,
                //           size: 10.0,
                //         ),
                //         SizedBox(height: 10.0,),
                //         Text("SpinKitThreeBounce"),
                //         SpinKitThreeBounce(
                //           color: Colors.white,
                //           size: 10.0,
                //         ),
                //         SizedBox(height: 10.0,),
                //         Text("SpinKitThreeInOut"),
                //         SpinKitThreeInOut(
                //           color: Colors.white,
                //           size: 10.0,
                //         ),
                //         SizedBox(height: 10.0,),
                //         Text("SpinKitWanderingCubes"),
                //         SpinKitWanderingCubes(
                //           color: Colors.white,
                //           size: 10.0,
                //         ),
                //         SizedBox(height: 10.0,),
                //         Text("SpinKitWave"),
                //         SpinKitWave(
                //           color: Colors.white,
                //           size: 10.0,
                //         ),
                //         SizedBox(height: 10.0,),
                //         Text("SpinKitWaveSpinner"),
                //         SpinKitWaveSpinner(
                //           color: Colors.white,
                //           size: 10.0,
                //         ),
                //         SizedBox(height: 10.0,),
                //         Text("SpinKitFadingCircle"),
                //         SpinKitFadingCircle(
                //           color: Colors.white,
                //           size: 10.0,
                //         ),
                //         SizedBox(height: 10.0,),
                //         Text("SpinKitFadingCube"),
                //         SpinKitFadingCube(
                //           color: Colors.white,
                //           size: 10.0,
                //         ),
                //         SizedBox(height: 10.0,),
                //         Text("SpinKitFadingFour"),
                //         SpinKitFadingFour(
                //           color: Colors.white,
                //           size: 10.0,
                //         ),
                //         SizedBox(height: 10.0,),
                //       ],
                //     ),
                //     Column(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Text("SpinKitFadingGrid"),
                //         SpinKitFadingGrid(
                //           color: Colors.white,
                //           size: 20.0,
                //         ),
                //         SizedBox(height: 10.0,),
                //         Text("SpinKitFoldingCube"),
                //         SpinKitFoldingCube(
                //           color: Colors.white,
                //           size: 20.0,
                //         ),
                //         SizedBox(height: 10.0,),
                //         Text("SpinKitPouringHourGlass"),
                //         SpinKitPouringHourGlass(
                //           color: Colors.white,
                //           size: 20.0,
                //         ),
                //         SizedBox(height: 10.0,),
                //         Text("SpinKitPianoWave"),
                //         SpinKitPianoWave(
                //           color: Colors.white,
                //           size: 20.0,
                //         ),
                //         SizedBox(height: 10.0,),
                //         Text("SpinKitPouringHourGlassRefined"),
                //         SpinKitPouringHourGlassRefined(
                //           color: Colors.white,
                //           size: 20.0,
                //         ),
                //         SizedBox(height: 10.0,),
                //         Text("SpinKitPumpingHeart"),
                //         SpinKitPumpingHeart(
                //           color: Colors.white,
                //           size: 20.0,
                //         ),
                //         SizedBox(height: 10.0,),
                //         Text("SpinKitHourGlass"),
                //         SpinKitSquareCircle(
                //           color: Colors.white,
                //           size: 20.0,
                //         ),
                //         SizedBox(height: 10.0,),
                //         Text("SpinKitRing"),
                //         SpinKitRing(
                //           color: Colors.white,
                //           size: 20.0,
                //         ),
                //         SizedBox(height: 10.0,),
                //         Text("SpinKitRipple"),
                //         SpinKitRipple(
                //           color: Colors.white,
                //           size: 20.0,
                //         ),
                //         SizedBox(height: 10.0,),
                //         Text("SpinKitRotatingCircle"),
                //         SpinKitRotatingCircle(
                //           color: Colors.white,
                //           size: 20.0,
                //         ),
                //         SizedBox(height: 10.0,),
                //         Text("SpinKitRotatingPlain"),
                //         SpinKitRotatingPlain(
                //           color: Colors.white,
                //           size: 20.0,
                //         ),
                //         SizedBox(height: 10.0,),
                //       ],
                //     ),
                //
                //
                //   ],
                // ),
              )

            // SpinKitPouringHourGlass(
            //   color: Colors.white,
            //   size: 50.0,
            // ),
            // SpinKitDoubleBounce(
            //   color: Colors.white,
            //   size: 50.0,
            // ),
            // SpinKitCubeGrid(
            //   color: Colors.white,
            //   size: 50.0,
            // ),
            // SpinKitSquareCircle(
            //   color: Colors.white,
            //   size: 50.0,
            // ),
            // SpinKitRotatingCircle(
            //   color: Colors.white,
            //   size: 50.0,
            // ),

        ),
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
            Navigator.pushReplacementNamed(context, '/home',
                arguments: {
                  'name':'Kamal'
                });
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

  Map loginData ={};
  @override
  void initState() {
    super.initState();
    print("InitState Home called ");
  }

  @override
  Widget build(BuildContext context) {
    loginData = ModalRoute.of(context)?.settings.arguments as Map;
    print("Build Home called ${loginData}");
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
            Navigator.of(context).push(_createAnimationRoute());

            // Navigator.pushReplacementNamed(context, '/dashboard');
          },
          child: Icon(
            Icons.dashboard,
            color: Colors.blue,
          ),),
      ),
    );
  }
}

Route<void> _createAnimationRoute(){
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const DashboardRouting(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      final tween = Tween(begin: begin, end: end);
      final curvedAnimation = CurvedAnimation(parent: animation, curve: curve);

      return SlideTransition(
        position: tween.animate(curvedAnimation),
        child: child,
      );
    },
  );
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
              Navigator.pushReplacementNamed(context, '/login');
            },
        child: Icon(
          Icons.login,
          color: Colors.blue,
        ),),
      ),
    );
  }
}
