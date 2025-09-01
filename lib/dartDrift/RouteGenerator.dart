
import 'package:flutter/material.dart';
import 'package:fun_flix/dartDrift/driftUI/DartDriftUIWidget.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings
  settings) {
    switch (settings.name) {
      case '/driftLoading':
        return MaterialPageRoute(builder: (_) => const DriftLoadingRouting());
      case '/driftLogin':
        return MaterialPageRoute(builder: (_) => const DriftLoginRouting ());
       case '/driftHome':
        return MaterialPageRoute(builder: (_) => const DriftHomeRouting ());
       case '/driftDashboard':
        return MaterialPageRoute(builder: (_) => const DriftDashboardRouting ());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('No Route'),
          centerTitle: true,),
        body: const Center(
          child: Text('Sorry no route was found!', style:
          TextStyle(color: Colors.red, fontSize: 18.0),
          ),
        ),
      );
    });
  }
}