import 'package:dietechtic_v01/src/widgets/floating_nav_bar.dart';
import 'package:dietechtic_v01/src/widgets/footer_general.dart';
import 'package:dietechtic_v01/src/widgets/header_general.dart';
import 'package:dietechtic_v01/src/widgets/title_widget_page.dart';
import 'package:flutter/material.dart';

class DesayunoHipoteroidismo1 extends StatelessWidget {

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
                      image: DecorationImage(image: AssetImage('assets/img/desayunoHipo_1.png'), fit: BoxFit.cover)
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
                                              'Pudín de semillas de chía de chocolate de la noche a la mañana.',
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
                                        child: Text('- 1/4 taza de cacao en polvo o cacao en polvo sin endulzar.'),
                                      ),
                                      
                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 4 cucharaditas de mayonesa light.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 3-5 cucharadas de jarabe de arce.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 1/2 cucharadita de canela molida (opcional).'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 1 pizca de sal marina.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 1/2 cucharadita de extracto de vainilla.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 1 1/2 tazas de leche (de almendra).'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 1/2 taza de semillas de chía.'),
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
                                        child: Text('1.- En un pequeño tazón para mezclar agregue el polvo de cacao (tamice primero para reducir los grumos), el jarabe de arce, la canela molida, la sal y la vainilla y bata para combinar. Luego agregue un poco de leche sin leche a la vez y bata hasta que se forme una pasta. Luego agregue el resto de la leche sin lácteos y bata hasta que esté suave.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('2.- Añada las semillas de chía y bata una vez más para mezclar. Luego cubra y refrigere durante la noche, o por lo menos de 3 a 5 horas (hasta que logre una consistencia similar a la del pudín). También puede ser útil dar a la mezcla un batidor/agitador adicional una vez que haya estado en el refrigerador por 30-45 minutos.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('3.- Las sobras se mantienen cubiertas en la nevera durante 4-5 días, aunque es mejor cuando están frescas. Servir frío con los ingredientes deseados, como fruta, granola o crema batida de coco.'),
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