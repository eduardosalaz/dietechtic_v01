import 'package:dietechtic_v01/src/widgets/floating_nav_bar.dart';
import 'package:dietechtic_v01/src/widgets/footer_general.dart';
import 'package:dietechtic_v01/src/widgets/header_general.dart';
import 'package:dietechtic_v01/src/widgets/title_widget_page.dart';
import 'package:flutter/material.dart';

class CenaAnemia1 extends StatelessWidget {

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
                      image: DecorationImage(image: AssetImage('assets/img/cenaAn_1.png'), fit: BoxFit.cover)
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
                                              'Galletas de almendras y arroz.',
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
                                        child: Text('- 2 cucharadas almendra molida (25 g).'),
                                      ),
                                      
                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 4 claras de huevos grandes.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 3/4 taza de mantequilla (150 g).'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 1 pizca de sal.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 1 taza de harina integral (125 g).'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 1/4 taza de harina de arroz (50 g).'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- Ralladura de limón.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 3/4 taza de azúcar morena (150 g).'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 3/8 taza de almendras escurridas, ligeramente tostadas y picadas (75 g).'),
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
                                        child: Text('1.- Primero, debes mezclar bien la mantequilla y el azúcar en un recipiente.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('2.- Luego, tamiza la harina, la almendra molida y la sal..'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('3.- Los trocitos de almendras que quedaron en el tamiz se le agregan a la mezcla.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('4.- A continuación, se le adiciona la almendra molida y la ralladura de limón.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('5.- Bate las claras a punto de nieve. Agregarlas a la pasta de almendras, removiendo bien para que queden bien integradas.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('6.- Después, se toman pequeñas porciones de masa y se forman las galletas en bandeja de horno bien engrasada.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('7.- Por último, hornea las galletas en un horno precalentado a 180° C de 15 a 20 minutos.'),
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