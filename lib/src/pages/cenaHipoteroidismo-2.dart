import 'package:dietechtic_v01/src/widgets/floating_nav_bar.dart';
import 'package:dietechtic_v01/src/widgets/footer_general.dart';
import 'package:dietechtic_v01/src/widgets/header_general.dart';
import 'package:dietechtic_v01/src/widgets/title_widget_page.dart';
import 'package:flutter/material.dart';

class CenaHipoteroidismo2 extends StatelessWidget {

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
                      image: DecorationImage(image: AssetImage('assets/img/cenaHipo_2.png'), fit: BoxFit.cover)
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
                                              'Filete y pimientos del sudoeste.',
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
                                        child: Text('- 1/2 cucharada de comino molido.'),
                                      ),
                                      
                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 1/2 cucharadita de cilantro molido.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 1/2 cucharadita de chile en polvo.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 1/4 cucharadita de sal.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 3/4 de cucharadita de pimienta negra molida gruesa.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 1 libra de carne de res, bistec de solomillo superior deshuesado sin grasa.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 3 dientes de ajo pelados, 1 a la mitad y 2 picados.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 3 cucharaditas de aceite, canola dividida (o aceite de oliva).'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 2 pimientos medianos, rojos, campana en rodajas finas.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 1 cebolla mediana, blanca cortada por la mitad a lo largo y en rodajas finas.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 1 cucharadita de azúcar morena.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 1/2 taza de café, café instantáneo elaborado o preparado.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 1/4 taza de vinagre balsámico.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('- 4 tazas de berros.'),
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
                                        child: Text('1.- Mezcle el comino, el cilantro, el chile en polvo, la sal y 3/4 de cucharadita de pimienta en un tazón pequeño. Frote el bistec con el ajo cortado. Frote la mezcla de especias por todo el bistec.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('2.- Caliente 2 cucharaditas de aceite en una sartén grande y pesada, preferiblemente de hierro fundido, a fuego medio-alto. Agregue el bistec y cocine hasta que esté cocido deseado, de 4 a 6 minutos por lado, a fuego medio. Transfiera a una tabla de cortar y deje reposar.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('3.- Agregue 1 cucharadita de aceite restante a la sartén. Agrega los pimientos morrones y la cebolla; cocine, revolviendo con frecuencia, hasta que se ablanden, aproximadamente 4 minutos. Agrega el ajo picado y el azúcar morena; cocine, revolviendo con frecuencia, durante 1 minuto. Agregue café, vinagre y cualquier jugo de carne acumulado; cocine por 3 minutos para intensificar el sabor. Condimente con pimienta.'),
                                      ),

                                      Padding(
                                        padding:EdgeInsets.symmetric(horizontal: screenSize.width*0.1, vertical: screenSize.height*0.01),
                                        child: Text('4.- Para servir, coloque 1 taza de berros en cada plato. Cubra con los pimientos salteados y la cebolla. Corte el filete en rodajas finas a lo largo de la fibra y colóquelo sobre las verduras. Vierta la salsa de la sartén sobre el bistec. Servir inmediatamente.'),
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