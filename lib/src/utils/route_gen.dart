import 'package:dietechtic_v01/src/pages/comidaDiabetes-1.dart';
import 'package:dietechtic_v01/src/pages/comidaDiabetes-2.dart';
import 'package:dietechtic_v01/src/pages/comidaDiabetes-3.dart';
import 'package:dietechtic_v01/src/pages/desayunoDiabetes-1.dart';
import 'package:dietechtic_v01/src/pages/desayunoDiabetes-2.dart';
import 'package:dietechtic_v01/src/pages/desayunoDiabetes-3.dart';
import 'package:dietechtic_v01/src/pages/cenaDiabetes-1.dart';
import 'package:dietechtic_v01/src/pages/cenaDiabetes-2.dart';
import 'package:dietechtic_v01/src/pages/cenaDiabetes-3.dart';
import 'package:dietechtic_v01/src/pages/desayunoHipoteroidismo-1.dart';
import 'package:dietechtic_v01/src/pages/desayunoHipoteroidismo-2.dart';
import 'package:dietechtic_v01/src/pages/desayunoHipoteroidismo-3.dart';
import 'package:dietechtic_v01/src/pages/comidaHipoteroidismo-1.dart';
import 'package:dietechtic_v01/src/pages/comidaHipoteroidismo-2.dart';
import 'package:dietechtic_v01/src/pages/comidaHipoteroidismo-3.dart';
import 'package:dietechtic_v01/src/pages/cenaHipoteroidismo-1.dart';
import 'package:dietechtic_v01/src/pages/cenaHipoteroidismo-2.dart';
import 'package:dietechtic_v01/src/pages/cenaHipoteroidismo-3.dart';
import 'package:dietechtic_v01/src/pages/desayunoAnemia-1.dart';
import 'package:dietechtic_v01/src/pages/desayunoAnemia-2.dart';
import 'package:dietechtic_v01/src/pages/desayunoAnemia-3.dart';
import 'package:dietechtic_v01/src/pages/comidaAnemia-1.dart';
import 'package:dietechtic_v01/src/pages/comidaAnemia-2.dart';
import 'package:dietechtic_v01/src/pages/comidaAnemia-3.dart';
import 'package:dietechtic_v01/src/pages/cenaAnemia-1.dart';
import 'package:dietechtic_v01/src/pages/cenaAnemia-2.dart';
import 'package:dietechtic_v01/src/pages/cenaAnemia-3.dart';
import 'package:dietechtic_v01/src/pages/comidaDiabetes.dart';
import 'package:dietechtic_v01/src/pages/desayunoDiabetes.dart';
import 'package:dietechtic_v01/src/pages/cenaDiabetes.dart';
import 'package:dietechtic_v01/src/pages/enviar_info_page.dart';
import 'package:dietechtic_v01/src/pages/info_basica.dart';
import 'package:dietechtic_v01/src/pages/desayunoHipoteroidismo.dart';
import 'package:dietechtic_v01/src/pages/comidaHipoteroidismo.dart';
import 'package:dietechtic_v01/src/pages/cenaHipoteroidismo.dart';
import 'package:dietechtic_v01/src/pages/desayunoAnemia.dart';
import 'package:dietechtic_v01/src/pages/comidaAnemia.dart';
import 'package:dietechtic_v01/src/pages/cenaAnemia.dart';
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
      case '/desayunoHipotiroidismo':
        return MaterialPageRoute(builder: (_) => DesayunoHipoteroidismo());
      case '/comidaHipotiroidismo':
        return MaterialPageRoute(builder: (_) => ComidaHipoteroidismo());
      case '/cenaHipotiroidismo':
        return MaterialPageRoute(builder: (_) => CenaHipoteroidismo());
      case '/desayunoDiabetes':
        return MaterialPageRoute(builder: (_) => DesayunoDiabetes());
      case '/comidaDiabetes':
        return MaterialPageRoute(builder: (_) => ComidaDiabetes());
      case '/cenaDiabetes':
        return MaterialPageRoute(builder: (_) => CenaDiabetes());
      case '/desayunoAnemia':
        return MaterialPageRoute(builder: (_) => DesayunoAnemia());
      case '/comidaAnemia':
        return MaterialPageRoute(builder: (_) => ComidaAnemia());
      case '/cenaAnemia':
        return MaterialPageRoute(builder: (_) => CenaAnemia());
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
      case '/desayunoHipotiroidismo-1':
        return MaterialPageRoute(builder: (_) => DesayunoHipoteroidismo1());
      case '/desayunoHipotiroidismo-2':
        return MaterialPageRoute(builder: (_) => DesayunoHipoteroidismo2());
      case '/desayunoHipotiroidismo-3':
        return MaterialPageRoute(builder: (_) => DesayunoHipoteroidismo3());
      case '/comidaHipotiroidismo-1':
        return MaterialPageRoute(builder: (_) => ComidaHipoteroidismo1());
      case '/comidaHipotiroidismo-2':
        return MaterialPageRoute(builder: (_) => ComidaHipoteroidismo2());
      case '/comidaHipotiroidismo-3':
        return MaterialPageRoute(builder: (_) => ComidaHipoteroidismo3());
      case '/cenaHipotiroidismo-1':
        return MaterialPageRoute(builder: (_) => CenaHipoteroidismo1());
      case '/cenaHipotiroidismo-2':
        return MaterialPageRoute(builder: (_) => CenaHipoteroidismo2());
      case '/cenaHipotiroidismo-3':
        return MaterialPageRoute(builder: (_) => CenaHipoteroidismo3());
      case '/desayunoAnemia-1':
        return MaterialPageRoute(builder: (_) => DesayunoAnemia1());
      case '/desayunoAnemia-2':
        return MaterialPageRoute(builder: (_) => DesayunoAnemia2());
      case '/desayunoAnemia-3':
        return MaterialPageRoute(builder: (_) => DesayunoAnemia3());
      case '/comidaAnemia-1':
        return MaterialPageRoute(builder: (_) => ComidaAnemia1());
      case '/comidaAnemia-2':
        return MaterialPageRoute(builder: (_) => ComidaAnemia2());
      case '/comidaAnemia-3':
        return MaterialPageRoute(builder: (_) => ComidaAnemia3());
      case '/cenaAnemia-1':
        return MaterialPageRoute(builder: (_) => CenaAnemia1());
      case '/cenaAnemia-2':
        return MaterialPageRoute(builder: (_) => CenaAnemia2());
      case '/cenaAnemia-3':
        return MaterialPageRoute(builder: (_) => CenaAnemia3());
      

      
      
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
