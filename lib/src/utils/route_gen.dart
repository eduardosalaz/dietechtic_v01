import 'package:dietechtic_v01/src/pages/comida_descripcion.dart';
import 'package:dietechtic_v01/src/pages/comidas_page.dart';
import 'package:dietechtic_v01/src/pages/enviar_info_page.dart';
import 'package:dietechtic_v01/src/pages/info_basica.dart';
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
      case '/info_basica':
        return MaterialPageRoute(builder: (_) => InfoBasicaPage());
      //case '/enviar_info':
      //return MaterialPageRoute(builder: (_) => EnviarInfoBasica());
      case '/mandar_datos':
        return MaterialPageRoute(builder: (_) => EnviarInfoPage(data: args));
      case '/comidas_main':
        return MaterialPageRoute(builder: (_) => ComidasPage());
      case '/comidas_desc':
        return MaterialPageRoute(builder: (_) => ComidaDescripcionPage());
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
