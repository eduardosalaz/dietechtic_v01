import 'package:dietechtic_v01/src/pages/enviar_info_page.dart';
import 'package:dietechtic_v01/src/pages/comidaDiabetes.dart';
import 'package:dietechtic_v01/src/utils/authentication_service.dart';
import 'package:dietechtic_v01/src/widgets/carrouselDesayunoDiab.dart';
import 'package:dietechtic_v01/src/widgets/floating_nav_bar.dart';
import 'package:dietechtic_v01/src/widgets/footer_general.dart';
import 'package:dietechtic_v01/src/widgets/header_general.dart';
import 'package:dietechtic_v01/src/widgets/title_widget_page.dart';
import 'package:dietechtic_v01/src/widgets/toogle_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
bool estadoDesayuno = true;
class DesayunoDiabetes extends StatefulWidget {
  
  
  
  
@override
  _ComidasPageState createState() => _ComidasPageState();



}

class _ComidasPageState extends State<DesayunoDiabetes> {
  
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: screenSize.height,
        child: Stack(
          children: <Widget>[
            HeaderGeneral(),
            TitleWidgetPage(title: 'Diabetes  '),
            Align(
              alignment: Alignment.bottomCenter,
              child: FooterGeneral()
            ),
            _Recetas(),
            Align(
              alignment: Alignment.bottomCenter,
              child: FloatingNavBar(
                activeColor: Color(0xff73a270),
                inactiveColor: Colors.grey
              ),
            )
          ],
        ),
      )
   );
    
  }

  
}

class _Recetas extends StatelessWidget {
  
  
  @override
  
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    
    return Column(
      children: <Widget>[
        
        SizedBox(height: screenSize.height*0.2,),
        ToogleButtonList(
          height: screenSize.height*0.05,
          
          opciones: ['Desayuno', 'Comida', 'Cena'],
          onPressed: (int value){
            if('$value'=='1'){
              Navigator.of(context).pushReplacementNamed('/comidaDiabetes'); 
            }
            else if('$value' == '2'){
              Navigator.of(context).pushReplacementNamed('/cenaDiabetes'); 
            }
            
            
          },
          
          activeColor: Color(0xff73a270),
          activeTextColor: Colors.white,
          inactiveTextColor: Colors.black,
        ),
        SizedBox(height: screenSize.height*0.02,),
        DesayunoDiab(),
        RaisedButton(
                      child: Text(
                        'Cerrar Sesión',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      onPressed: () {
                        context.read<AuthenticationService>().signOut();
                        Navigator.of(context).pushReplacementNamed('/login');  
                      },
                      elevation: 5.0,
                      color: Color(0xff73a720),
                      //splashColor: Color(0xff567c18),
                      //animationDuration: Duration(
                      //  seconds: 1), //color oscuro cuando se seleccione
                    ),
        SizedBox(height: screenSize.height*0.02,),
        Text(
          'Consejo del día',
          style: TextStyle(
            fontSize: screenSize.height*0.04,
            fontWeight: FontWeight.bold
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
          child: Text('Cada vez que comes, es una oportunidad de nutrir a tu cuerpo.'),
        )
      ],
    );
    
    
  }
  

  
 
}