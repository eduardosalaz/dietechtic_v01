import 'package:dietechtic_v01/src/widgets/floating_nav_bar.dart';
import 'package:dietechtic_v01/src/widgets/footer_general.dart';
import 'package:dietechtic_v01/src/widgets/header_general.dart';
import 'package:dietechtic_v01/src/widgets/title_widget_page.dart';
import 'package:flutter/material.dart';

class CenaDiabetes3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: screenSize.height,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment(0, -0.85),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: screenSize.height*0.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(image: AssetImage('assets/img/cenaDiab_3.png'), fit: BoxFit.cover)
                    ),
                  ),

                  Row(
                    children: <Widget>[
                      Expanded(
                        child: SizedBox(
                          height: 270.0,
                          child: new ListView(
                            scrollDirection:Axis.vertical,
                            children:[Row(
                                        children: <Widget>[
                                          SizedBox(width: screenSize.width*0.1,),
                                          Container(
                                            width: screenSize.width*0.5,
                                            child: Text(
                                              'Chile poblano de relleno de quínoa.',
                                              maxLines: 2,
                                              style: TextStyle(
                                                fontSize: screenSize.height*0.04,
                                                fontWeight: FontWeight.bold
                                              ),
                                            ),
                                          ),
                                          
                                        ],
                                      ),
                                      
                                      SizedBox(height: screenSize.height*0.025,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(width: screenSize.width*0.1,),
                                          Text(
                                          'Ingredientes',
                                          style: TextStyle(
                                            fontSize: screenSize.height*0.03,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                          SizedBox(width: screenSize.width*0.05,),
                                        ],
                                      ),
                                      
                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 4 chiles poblanos, asados y desvenados.'),
                                      ),
                                      
                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 2 cucharadas de aceite de oliva.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 2 cucharadas de cebolla, finamente picada.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 1 cucharadita de ajo, finamente picado.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 1 chile ancho, cortado en tiritas.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 2 papas, cortada en cubitos.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 2 tazas de seta, fileteada.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 1 berenjena, cortada en cubitos.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 1 taza de quinoa, cocida.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- Sal y pimienta al gusto.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 2 aguacates.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 3 cucharadas de cilantro fresco.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('-4 cucharadas de leche de soya.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 1 limón, sólo el jugo.'),
                                      ),

                                      SizedBox(height: screenSize.height*0.025,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(width: screenSize.width*0.1,),
                                          Text(
                                          'Preparación',
                                          style: TextStyle(
                                            fontSize: screenSize.height*0.03,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                          SizedBox(width: screenSize.width*0.05,),
                                        ],
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('1.- En una sartén a fuego medio agrega el aceite de olivo y añade la cebolla, el ajo, agrega el chile ancho, las papas, las, setas, las berenjenas, la quínoa y salpimenta.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('2.- Rellena los chiles de la preparación anterior. Reserva.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('3.- Para la salsa, licúa los aguacates con el cilantro, la leche de soya y el jugo de limón, hasta que tenga consistencia de salsa, salpimenta.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('4.- Sirve el chile con la salsa de aguacate.'),
                                      ),
                            ]
                          ),
                        ),
                      )
                    ]
                  ),
                ],
              )
            ),
            HeaderGeneral(),
           Align(
            alignment: Alignment(-0.9,-.91),
                      child: BackButton(
                          color: Colors.white,                        
                        ),
          ),
            TitleWidgetPage(title: 'Nunca te rindas'),
            Align(
              alignment: Alignment.bottomCenter,
              child: FooterGeneral()
            ),
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

class _NutritionInformation extends StatelessWidget {
  const _NutritionInformation({
    @required this.screenSize,
    @required this.text,
    @required this.subtitle,
    this.color = Colors.black,
  });

  final Size screenSize;
  final String text;
  final String subtitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(text,
          style: TextStyle(
            fontSize: screenSize.height*0.03,
            fontWeight: FontWeight.bold,
            color: color                        
          ),
        ),
        Text(subtitle,
          style: TextStyle(
            fontSize: screenSize.height*0.02,
            fontWeight: FontWeight.bold,
            color: Colors.grey                        
          ),
        ),
      ],
    );
  }
}