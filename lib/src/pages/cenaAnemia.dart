import 'package:dietechtic_v01/src/pages/enviar_info_page.dart';
import 'package:dietechtic_v01/src/pages/comidaDiabetes.dart';
import 'package:dietechtic_v01/src/widgets/carrouselCenaAn.dart';
import 'package:dietechtic_v01/src/widgets/floating_nav_bar.dart';
import 'package:dietechtic_v01/src/widgets/footer_general.dart';
import 'package:dietechtic_v01/src/widgets/header_general.dart';
import 'package:dietechtic_v01/src/widgets/title_widget_page.dart';
import 'package:dietechtic_v01/src/widgets/toogle_button_widget.dart';
import 'package:flutter/material.dart';


class CenaAnemia extends StatefulWidget {
  
  
  
  
@override
  _ComidasPageState createState() => _ComidasPageState();



}

class _ComidasPageState extends State<CenaAnemia> {
  
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: screenSize.height,
        child: Stack(
          children: <Widget>[
            HeaderGeneral(),
            TitleWidgetPage(title: 'Anemia'),
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
          
          opciones: ['Cena', 'Comida', 'Desayuno'],
          onPressed: (int value){
            if('$value'=='1'){
              Navigator.of(context).pushReplacementNamed('/comidaAnemia');  
            }
            else if('$value' == '2'){
              Navigator.of(context).pushReplacementNamed('/desayunoAnemia'); 
            }
            
            
          },
          
          activeColor: Color(0xff73a270),
          activeTextColor: Colors.white,
          inactiveTextColor: Colors.black,
        ),
        SizedBox(height: screenSize.height*0.02,),
        CenaAn(),
        
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
          child: Text('Veniam aute ex nostrud aliquip excepteur do sit. Ullamco excepteur et voluptate do officia ipsum. Ullamco nisi officia pariatur in cupidatat aliquip aliqua laborum laboris sint aute.'),
        )
      ],
    );
    
    
  }
  

  
 
}