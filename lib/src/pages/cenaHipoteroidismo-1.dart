import 'package:dietechtic_v01/src/widgets/floating_nav_bar.dart';
import 'package:dietechtic_v01/src/widgets/footer_general.dart';
import 'package:dietechtic_v01/src/widgets/header_general.dart';
import 'package:dietechtic_v01/src/widgets/title_widget_page.dart';
import 'package:flutter/material.dart';

class CenaHipoteroidismo1 extends StatelessWidget {

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
                      image: DecorationImage(image: AssetImage('assets/img/cenaHipo_1.png'), fit: BoxFit.cover)
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
                                              'Bistec con pimientos.',
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
                                        child: Text('- 1 cucharada de aceite vegetal.'),
                                      ),
                                      
                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 1 pimiento rojo sin corazón, sin semillas y cortado en tiras.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 1 pimiento verde sin corazón, sin semillas y cortado en tiras.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 1 1/4 libras de bistec de falda cortado en rodajas finas.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 2 cucharaditas de ajo picado.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 1 cucharadita de jengibre picado.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- Sal y pimienta al gusto.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 1/4 de taza de salsa de soja.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 1 1/2 cucharadas de azúcar.'),
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
                                        child: Text('1.- Calentar una cucharadita de aceite vegetal a fuego medio-alto en una olla grande.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('2.- Añada los pimientos y cocine durante 3-4 minutos o hasta que estén tiernos. Saque los pimientos de la sartén y colóquelos en un plato.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('3.- Añade el aceite restante a la sartén. Sazonar el bistec de falda con sal y pimienta al gusto.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('4.- Aumenta el fuego a alto. Añade el filete a la sartén y cocina durante 5-6 minutos o hasta que se dore ligeramente.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('5.- Añade el ajo y el jengibre, y cocina durante 30 segundos.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('6.- Coloca los pimientos de nuevo en la sartén con el filete.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('7.- En un tazón pequeño, bata la salsa de soja, el azúcar, 1/4 de taza de agua.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('8.- Vierte la salsa sobre la mezcla del filete y déjalo hervir a fuego lento. Cocinar durante 2-3 minutos o hasta que la salsa se haya espesado, luego servir.'),
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