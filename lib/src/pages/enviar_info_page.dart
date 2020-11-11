import 'package:dietechtic_v01/src/utils/authentication_service.dart';
import 'package:dietechtic_v01/src/widgets/footer_general.dart';
import 'package:dietechtic_v01/src/widgets/header_general.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EnviarInfoPage extends StatelessWidget {
  final List data;

  EnviarInfoPage({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    String nombre = data[0];
    String edad = data[1];
    String genero = data[2];
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            HeaderGeneral(),
            FooterGeneral(),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(left: screenSize.width * 0.12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: screenSize.height * 0.25,
                    ),
                    SizedBox(
                      height: screenSize.height * 0.025,
                    ),
                    Container(
                      width: screenSize.width * 0.65,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Confirmacion de datos',
                            style: TextStyle(
                                color: Color(0xff73a270),
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Nombre completo:$nombre',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Edad:$edad',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Genero:$genero',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              RaisedButton(child: Text('Confirmar Datos')),
                              RaisedButton(child: Text('Volver')),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
