import 'package:dietechtic_v01/src/widgets/footer_general.dart';
import 'package:dietechtic_v01/src/widgets/header_general.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String enfermedadCondition;

class EnviarInfoPage extends StatelessWidget {
 
  
  final List data;

  EnviarInfoPage({
    Key key,
    @required this.data,
  }) : super(key: key);

  createAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Información guardada exitosamente'),
            content: Text('Se ha guardado la información en el servidor'),
            actions: <Widget>[
              MaterialButton(
                  child: Text('Continuar'),
                  onPressed: () {
                   
                    switch(enfermedadCondition){
                      case 'Diabetes': Navigator.of(context).pushNamed('/desayunoDiabetes'); 
                            break;
                      case 'Hipotiroidismo': Navigator.of(context).pushNamed('/desayunoHipotiroidismo');
                            break;
                      case 'Anemia': Navigator.of(context).pushNamed('/desayunoAnemia');
                            break;
                    }
                    
              
                    
                  })
            ],
          );
        });
  }



  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    String nombre = data[0];
    String edad = data[1];
    String genero = data[2];
    String enfermedad = data[3];
    print(enfermedad);
    enfermedadCondition = enfermedad;
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
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
                            'Nombre completo:',
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '$nombre',
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Edad:',
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '$edad',
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Género:',
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '$genero',
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Padecimiento crónico:',
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            '$enfermedad',
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              
                              RaisedButton.icon(
                                onPressed: () {
                                  createAlertDialog(context);
                                },
                                icon: Icon(Icons.send),
                                label: Text(
                                  'Mandar',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                elevation: 5.0,
                                color: Color(0xff73a270),
                                shape: StadiumBorder(),
                              ),
                              SizedBox(width: 10),
                              RaisedButton.icon(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed('/info_basica');
                                },
                                icon: Icon(Icons.backspace),
                                label: Text(
                                  'Volver',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                elevation: 5.0,
                                color: Color(0xff77a270),
                                shape: StadiumBorder(),
                              ),
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
