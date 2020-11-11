import 'package:dietechtic_v01/src/pages/objetivos_page.dart';
import 'package:flutter/material.dart';
import 'package:dietechtic_v01/main.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => AuthenticationWrapper());
      case '/second':
        return MaterialPageRoute(builder: (_) => ObjetivosPage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('Error'),
        ),
      );
    });
  }
}
