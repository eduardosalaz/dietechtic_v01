import 'package:dietechtic_v01/src/pages/comidaDiabetes-1.dart';
import 'package:dietechtic_v01/src/pages/comidaDiabetes-2.dart';
import 'package:dietechtic_v01/src/pages/comidaDiabetes-3.dart';
import 'package:dietechtic_v01/src/pages/desayunoDiabetes-1.dart';
import 'package:dietechtic_v01/src/pages/desayunoDiabetes-2.dart';
import 'package:dietechtic_v01/src/pages/desayunoDiabetes-3.dart';
import 'package:dietechtic_v01/src/pages/cenaDiabetes-1.dart';
import 'package:dietechtic_v01/src/pages/cenaDiabetes-2.dart';
import 'package:dietechtic_v01/src/pages/cenaDiabetes-3.dart';
import 'package:dietechtic_v01/src/pages/comidaDiabetes.dart';
import 'package:dietechtic_v01/src/pages/desayunoDiabetes.dart';
import 'package:dietechtic_v01/src/pages/cenaDiabetes.dart';
import 'package:dietechtic_v01/src/pages/enviar_info_page.dart';
import 'package:dietechtic_v01/src/pages/info_basica.dart';
import 'package:dietechtic_v01/src/pages/mainHipotiroidismo.dart';
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
      case '/desayunoDiabetes':
        return MaterialPageRoute(builder: (_) => DesayunoDiabetes());
      case '/desayunoHipotiroidismo':
        return MaterialPageRoute(builder: (_) => MainHipotiroidismo());
      case '/comidaDiabetes':
        return MaterialPageRoute(builder: (_) => ComidaDiabetes());
      case '/cenaDiabetes':
        return MaterialPageRoute(builder: (_) => CenaDiabetes());
      case '/comidaDiabetes-1':
        return MaterialPageRoute(builder: (_) => ComidaDiabetes1());
      case '/comidaDiabetes-2':
        return MaterialPageRoute(builder: (_) => ComidaDiabetes2());
      case '/comidaDiabetes-3':
        return MaterialPageRoute(builder: (_) => ComidaDiabetes3());
      case '/desayunoDiabetes-1':
        return MaterialPageRoute(builder: (_) => DesayunoDiabetes1());
      case '/desayunoDiabetes-2':
        return MaterialPageRoute(builder: (_) => DesayunoDiabetes2());
      case '/desayunoDiabetes-3':
        return MaterialPageRoute(builder: (_) => DesayunoDiabetes3());
      case '/cenaDiabetes-1':
        return MaterialPageRoute(builder: (_) => CenaDiabetes1());
      case '/cenaDiabetes-2':
        return MaterialPageRoute(builder: (_) => CenaDiabetes2());
      case '/cenaDiabetes-3':
        return MaterialPageRoute(builder: (_) => CenaDiabetes3());
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
