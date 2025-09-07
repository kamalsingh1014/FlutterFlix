import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';
import 'package:fun_flix/FlutterInterviewQustion.dart';
import 'package:fun_flix/dartDrift/RouteGenerator.dart';
import 'package:fun_flix/dartDrift/driftUI/driftDatabase/DriftDatabaseClass.dart';
import 'package:drift/drift.dart' as drift;
import 'package:provider/provider.dart';

import '../../basicWidgets/DartCircleAvatarWidget.dart';
import '../../dartCustomClass/DartCustomClassWidget.dart';

class DriftRoutingWidget extends StatelessWidget {
  const DriftRoutingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/driftLoading',
      onGenerateRoute: RouteGenerator.generateRoute,
      // routes: {
      //   '/driftLoading': (context) => DriftLoadingRouting(),
      //   '/driftLogin': (context) => DriftLoginRouting(),
      //   '/driftHome': (context) => DriftHomeRouting(),
      //   '/driftDashboard': (context) => DriftDashboardRouting(),
      // },
    );
  }
}

void switchToLogin(BuildContext context) async{
  await Future.delayed(Duration(seconds: 2));
  print("Ready for  Drift login");
  Navigator.pushNamed(context, '/driftLogin');
}

class DriftLoadingRouting extends StatefulWidget {
  const DriftLoadingRouting({super.key});

  @override
  State<DriftLoadingRouting> createState() => _DriftLoadingRoutingState();
}

class _DriftLoadingRoutingState extends State<DriftLoadingRouting>{

  @override
  void initState() {
    super.initState();
    print("InitState Drift Loading called ");
    // switchToLogin(context);
  }




  @override
  Widget build(BuildContext context) {
    print("Build  Drift Loading called ");
    switchToLogin(context);

    return Scaffold(
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

      );
  }
}





class DriftLoginRouting extends StatefulWidget {
  const DriftLoginRouting({super.key});

  @override
  State<DriftLoginRouting> createState() => _DriftLoginRoutingState();
}

class _DriftLoginRoutingState extends State<DriftLoginRouting> {

  TextEditingController userNameController = TextEditingController();
  TextEditingController userPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    print("InitState  Drift Login called ");
  }

  @override
  Widget build(BuildContext context) {
    print("Build  Drift Login called ");
    return Scaffold(
        appBar: AppBar(
          title: Text(" Drift Login Screen"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
            child : Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              keyboardType: TextInputType.name,
                              controller: userNameController,
                              validator: (value){
                                if(value == null || value.isEmpty ){
                                  return 'Username cannot be null or Empty';
                                }
                              },
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                  ),
                                  label: Text('Enter UserName')
                              ),
                            ),
                            SizedBox(height: 40.0,),
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              controller: userPasswordController,
                              validator: (value){
                                if(value == null || value.isEmpty ){
                                  return 'Password cannot be null or Empty';
                                }
                              },
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                ),
                                label: Text('Enter Password'),
                              ),
                            ),
                            SizedBox(height: 40.0),

                          ],
                        )
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shadowColor: Colors.pink[200],
                        elevation: 100.0
                      ),
                        onPressed: (){
                      print("Login Button");
                    }, child: Text('Login',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w500
                    ),
                    ),
              )

                  ],
                ),

              ),
            )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print(" Drift Login Floating Button");
            // Navigator.pushReplacementNamed(context, '/home',
            //     arguments: {
            //       'name':'Kamal'
            //     });
            final isValid = _formKey.currentState?.validate();
            if(isValid !=null &&  isValid) {
              Navigator.pushNamed(context, '/driftHome',
                  arguments: {
                    'name': 'Kamal'
                  });
            }
          },
          child: Icon(
            Icons.home,
            color: Colors.blue,
          ),),
    );
  }
}



class DriftHomeRouting extends StatefulWidget {
  const DriftHomeRouting({super.key});

  @override
  State<DriftHomeRouting> createState() => _DriftHomeRoutingState();
}

class _DriftHomeRoutingState extends State<DriftHomeRouting> {

  Map loginData ={};
  // late DriftDatabaseClass  driftDatabaseClass;


  @override
  void initState() {
    super.initState();
    print("InitState Drift  Home called ");
    // driftDatabaseClass = DriftDatabaseClass();
  }

  @override
  void dispose() {
    // driftDatabaseClass.close();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // loginData = ModalRoute.of(context)?.settings.arguments as Map;
    // print("Build Home called ${loginData}");
    return Scaffold(
        appBar: AppBar(
          title: Text(" Drift Home Screen"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
            child : Card(
              child: Text(' Drift Home Screen'),
            )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print(" Drift Home Floating Button");
            // Navigator.of(context).push(_createAnimationRoute());

            // Navigator.pushReplacementNamed(context, '/dashboard');
              FlutterInterviewQuestions flutterInterviewQuestions = FlutterInterviewQuestions();
              List<QuestionModel> terminologyList = flutterInterviewQuestions
                  .questionList;
              for (int i = 0; i < terminologyList.length; i++) {
                final terminology = DriftLearningTableCompanion(
                    terminologyId: drift.Value(
                        terminologyList[i].terminologyId),
                    terminology: drift.Value(terminologyList[i].terminology),
                    questionId: drift.Value(terminologyList[i].questionId),
                    question: drift.Value(terminologyList[i].question),
                    answerId: drift.Value(terminologyList[i].answerId),
                    answer: drift.Value(terminologyList[i].answer)
                );

                // driftDatabaseClass.insertDriftLearningTable(terminology)
                Provider.of<DriftDatabaseClass>(context,listen: false).insertDriftLearningTable(terminology)

                // driftDatabaseClass.updateDriftLearningTable(terminology)//Need Primary Key
                    .then((value) =>
                    ScaffoldMessenger.of(context).showMaterialBanner(
                        MaterialBanner(
                            backgroundColor: Colors.blue,
                            content: Text("New Terminology Updated ${value}")
                            , actions: [
                          TextButton(onPressed: () {
                            ScaffoldMessenger
                                .of(context)
                                .hideCurrentMaterialBanner();
                          },
                              child: Text('Close',
                                style: TextStyle(
                                    color: Colors.purple[900]
                                ),))
                        ])
                    ));
              }
              Navigator.pushNamed(context, '/driftDashboard');
          },
          child: Icon(
            Icons.dashboard,
            color: Colors.blue,
          ),),

    );
  }
}

Route<void> _createAnimationRoute(){
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const DriftDashboardRouting(),
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

class DriftDashboardRouting extends StatefulWidget {
  const DriftDashboardRouting({super.key});

  @override
  State<DriftDashboardRouting> createState() => _DriftDashboardRoutingState();
}

class _DriftDashboardRoutingState extends State<DriftDashboardRouting> {
  // late DriftDatabaseClass driftDatabaseClass;
  int currentSelectedIndex = 0;
  final pages = [
    DartCustomClassWidget(),
    DriftEmailRouting(),
    DartCustomClassWidget(),
    Dartcircleavatarwidget(),
  ];
  @override
  void initState() {
    super.initState();
    print("InitState  Drift Dashboard called ");
    // driftDatabaseClass = DriftDatabaseClass();
  }

  @override
  void dispose() {
    // driftDatabaseClass.close();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    print("Build  Drift Dashboard called ");
    return Scaffold(
        appBar: AppBar(
          title: Text(" Drift Dashboard Screen"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          elevation: 0,
        ),
        // body: FutureBuilder<List<DriftLearningTableData>>(
        //   future: driftDatabaseClass.getInBuiltTerminology(),
        //   builder: (context ,snapshot){
        //     List<DriftLearningTableData>? terminologyList = snapshot.data;
        //
        //     if(snapshot.connectionState != ConnectionState.done){
        //       return const Center(
        //         child: SpinKitPianoWave(
        //           color: Colors.blue,
        //           size: 40.0,
        //         ),
        //       );
        //     }
        //     if(snapshot.hasError){
        //       return  Center(
        //         child: Text("${snapshot.error.toString}"),
        //       );
        //     }
        //     if(terminologyList !=null && terminologyList.isNotEmpty){
        //       return ListView.builder(
        //         itemCount: terminologyList.length,
        //           itemBuilder: (context , index){
        //             final terminology = terminologyList[index];
        //
        //             return  GestureDetector(
        //               onTap: ()async{
        //                 print("Question Selected : ${terminologyList[index].question}");
        //                DriftLearningTableData driftLearningTableData =   await driftDatabaseClass.getSingleInBuiltTerminology(terminologyList[index].questionId);
        //                 print("Answer Id Selected : ${driftLearningTableData.answerId}");
        //               },
        //               child : Padding(
        //               padding: const EdgeInsets.all(20.0),
        //               child: Card(
        //                 color: Colors.grey,
        //                 elevation: 100.0,
        //                 shadowColor: Colors.blue,
        //                 shape:  RoundedRectangleBorder(
        //                   borderRadius: BorderRadius.circular(20.0),
        //                     // borderRadius: BorderRadius.only(
        //                     //   topLeft: Radius.circular(20.0),
        //                     //   topRight: Radius.circular(20.0),
        //                     //   bottomLeft: Radius.circular(20.0),
        //                     //   bottomRight: Radius.circular(20.0),
        //                     // )
        //                   side: BorderSide(
        //                     color: Color.fromARGB(0, 0, 0, 1),
        //                     style: BorderStyle.solid,
        //                     width: 50.0
        //                   ),
        //                 ),
        //                 child: Padding(
        //                   padding: const EdgeInsets.all(20.0),
        //                   child: Column(
        //                     children: <Widget>[
        //                     Text(terminology.terminologyId.toString(),
        //                     style: TextStyle(
        //                       color: Colors.blue[700],
        //                       fontSize: 10.0,
        //                       fontWeight: FontWeight.w800
        //                     ),),
        //                       Text(terminology.terminology.toString(),
        //                         style: TextStyle(
        //                             color: Colors.blue[700],
        //                             fontSize: 10.0,
        //                             fontWeight: FontWeight.w800
        //                         ),),
        //                       Text(terminology.questionId.toString(),
        //                         style: TextStyle(
        //                             color: Colors.blue[700],
        //                             fontSize: 10.0,
        //                             fontWeight: FontWeight.w800
        //                         ),),
        //                       Text(terminology.question.toString(),
        //                         style: TextStyle(
        //                             color: Colors.blue[700],
        //                             fontSize: 10.0,
        //                             fontWeight: FontWeight.w800
        //                         ),),
        //                       Text(terminology.answerId.toString(),
        //                         style: TextStyle(
        //                             color: Colors.blue[700],
        //                             fontSize: 10.0,
        //                             fontWeight: FontWeight.w800
        //                         ),),
        //                       Text(terminology.answer.toString(),
        //                         style: TextStyle(
        //                             color: Colors.blue[700],
        //                             fontSize: 5.0,
        //                             fontWeight: FontWeight.w800
        //                         ),)
        //
        //                     ],
        //                   ),
        //                 ),
        //
        //               ),
        //             ),
        //             );
        //           });
        //
        //     }
        //     return Text("No Data Found");
        //
        //   },
        //
        // ),
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
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print(" Drift Dashboard Floating Button");
            // Navigator.pushReplacementNamed(context, '/login');
            setState(() {
              // driftDatabaseClass.deleteAllDriftLearningTable();//Working
              Provider.of(context,listen: false).deleteAllDriftLearningTable();//Working
            });
            // Navigator.pushNamedAndRemoveUntil(context,
            //     '/driftLogin',
            //     ModalRoute.withName('/driftLogin')
            // );//[Loading,Login]
            // Navigator.pushNamedAndRemoveUntil(context,
            //     '/login',
            //     (Routes) => false
            // );//[Loading,Login]
            // Navigator.popUntil(context,
            //     ModalRoute.withName('/driftLogin')
            // );//[Loading]

          },
          child: Icon(
            Icons.login,
            color: Colors.blue,
          ),),
    );
  }
}




class DriftEmailRouting extends StatefulWidget {
  const DriftEmailRouting({super.key});

  @override
  State<DriftEmailRouting> createState() => _DriftEmailRoutingState();
}

class _DriftEmailRoutingState extends State<DriftEmailRouting> {

  @override
  void initState() {
    super.initState();
    print("InitState  Drift Dashboard called ");
  }

  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    print("Build  Drift Email called ");
    return Scaffold(
      body: FutureBuilder<List<DriftLearningTableData>>(
        future: Provider.of<DriftDatabaseClass>(context).getInBuiltTerminology(),
        builder: (context ,snapshot){
          List<DriftLearningTableData>? terminologyList = snapshot.data;

          if(snapshot.connectionState != ConnectionState.done){
            return const Center(
              child: SpinKitPianoWave(
                color: Colors.blue,
                size: 40.0,
              ),
            );
          }
          if(snapshot.hasError){
            return  Center(
              child: Text("${snapshot.error.toString}"),
            );
          }
          if(terminologyList !=null && terminologyList.isNotEmpty){
            return ListView.builder(
              itemCount: terminologyList.length,
                itemBuilder: (context , index){
                  final terminology = terminologyList[index];

                  return  GestureDetector(
                    onTap: ()async{
                      print("Question Selected : ${terminologyList[index].question}");
                     // DriftLearningTableData driftLearningTableData =  Provider.of<DriftDatabaseClass>(context).getSingleInBuiltTerminology(terminologyList[index].questionId);
                     //  print("Answer Id Selected : ${driftLearningTableData.answerId}");
                      final updatedTerminology = DriftLearningTableCompanion(
                          terminologyId: drift.Value(
                              terminologyList[index].terminologyId),
                          terminology: drift.Value(terminologyList[index].terminology),
                          questionId: drift.Value(terminologyList[index].questionId),
                          question: drift.Value(terminologyList[index].answer),
                          answerId: drift.Value(terminologyList[index].answerId),
                          answer: drift.Value(terminologyList[index].answer)
                      );

                      try{
                        Provider.of<DriftDatabaseClass>(context,listen: false).updateDriftLearningTable(updatedTerminology);
                      }catch(e){
                        print("Exceptiojn while updating item : ${e.toString()}");
                      }

                    },
                    child : Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Card(
                      color: Colors.grey,
                      elevation: 100.0,
                      shadowColor: Colors.blue,
                      shape:  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                          // borderRadius: BorderRadius.only(
                          //   topLeft: Radius.circular(20.0),
                          //   topRight: Radius.circular(20.0),
                          //   bottomLeft: Radius.circular(20.0),
                          //   bottomRight: Radius.circular(20.0),
                          // )
                        side: BorderSide(
                          color: Color.fromARGB(0, 0, 0, 1),
                          style: BorderStyle.solid,
                          width: 50.0
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: <Widget>[
                          Text(terminology.terminologyId.toString(),
                          style: TextStyle(
                            color: Colors.blue[700],
                            fontSize: 10.0,
                            fontWeight: FontWeight.w800
                          ),),
                            Text(terminology.terminology.toString(),
                              style: TextStyle(
                                  color: Colors.blue[700],
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w800
                              ),),
                            Text(terminology.questionId.toString(),
                              style: TextStyle(
                                  color: Colors.blue[700],
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w800
                              ),),
                            Text(terminology.question.toString(),
                              style: TextStyle(
                                  color: Colors.blue[700],
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w800
                              ),),
                            Text(terminology.answerId.toString(),
                              style: TextStyle(
                                  color: Colors.blue[700],
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w800
                              ),),
                            Text(terminology.answer.toString(),
                              style: TextStyle(
                                  color: Colors.blue[700],
                                  fontSize: 5.0,
                                  fontWeight: FontWeight.w800
                              ),)

                          ],
                        ),
                      ),

                    ),
                  ),
                  );
                });

          }
          return Text("No Data Found");

        },

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print(" Drift Dashboard Floating Button");
          // Navigator.pushReplacementNamed(context, '/login');
          setState(() {
            Provider.of<DriftDatabaseClass>(context,listen: false).deleteAllDriftLearningTable();//Working
          });
          // Navigator.pushNamedAndRemoveUntil(context,
          //     '/driftLogin',
          //     ModalRoute.withName('/driftLogin')
          // );//[Loading,Login]
          // Navigator.pushNamedAndRemoveUntil(context,
          //     '/login',
          //     (Routes) => false
          // );//[Loading,Login]
          // Navigator.popUntil(context,
          //     ModalRoute.withName('/driftLogin')
          // );//[Loading]

        },
        child: Icon(
          Icons.login,
          color: Colors.blue,
        ),),
    );
  }
}
