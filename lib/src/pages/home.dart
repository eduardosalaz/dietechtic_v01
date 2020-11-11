import 'package:dietechtic_v01/src/utils/authentication_service.dart';
import 'package:dietechtic_v01/src/widgets/footer_general.dart';
import 'package:dietechtic_v01/src/widgets/header_general.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

/*
class _HomePageState extends State<HomePage> {
  final pageViewController = new PageController();
  final listaImagenes = [
    'assets/img/dietfast0.png',
    'assets/img/dietfast1.png',
    'assets/img/dietfast2.png'
  ];
  */
class _HomePageState extends State<HomePage> {
  String email;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    email = context.watch<AuthenticationService>().getEmail();
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
                    _WelcomeMessage(),
                    SizedBox(
                      height: screenSize.height * 0.025,
                    ),
                    Text(
                      'Hola $email',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff73a720),
                          fontSize: 30),
                    ),
                    RaisedButton(
                      onPressed: () {
                        context.read<AuthenticationService>().signOut();
                      },
                      child: Text("Cerrar sesión"),
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

class _WelcomeMessage extends StatelessWidget {
  const _WelcomeMessage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Text(
            'Dietechtic',
            style: TextStyle(
                color: Color(0xff73a270),
                fontWeight: FontWeight.bold,
                fontSize: 45),
          ),
        ],
      ),
    );
  }
}

/*

class HomePage extends StatelessWidget {
  String email;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    email = context.watch<AuthenticationService>().getEmail();
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
                    Text('Bienvenido $email'),
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

/*Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _SlideShowDietFast(screenSize: screenSize, pageViewController: pageViewController, listaImagenes: listaImagenes),
          FooterHome(),
          Align(
            alignment: Alignment(-0.8, 0.1),
            child:_Title(),
          ),
          Align(
              alignment: Alignment(0, 0.7),
              child: _Resumen(screenSize: screenSize)
          ),
          Align(
            alignment: Alignment(0, 1),
            child: _ActionsFooter(screenSize: screenSize, pageController: pageViewController, numPaginas: listaImagenes.length),
          )
        ],
      ),
    );
  }
}

class _SlideShowDietFast extends StatelessWidget {
  const _SlideShowDietFast({
    @required this.screenSize,
    @required this.pageViewController,
    @required this.listaImagenes,
  });

  final Size screenSize;
  final PageController pageViewController;
  final List<String> listaImagenes;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: screenSize.height*0.7,
      child: PageView.builder(
        controller: pageViewController,
        itemCount: listaImagenes.length,
        itemBuilder: (context, i) => Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(listaImagenes[i]), 
              fit: BoxFit.fill
            )
          ),
        ),
      )
    );
  }
}

class _Resumen extends StatelessWidget {
  const _Resumen({
    @required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 80),
      width: double.infinity,
      height: screenSize.height*0.15,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Ejemplo', 
            style: TextStyle(
              color: Colors.white, 
              fontSize: 25, 
              fontWeight: FontWeight.bold
            ),
          ),
          Text(
            'Aliqua do mollit est nostrud voluptate occaecat id mollit magna sint dolore sit elit. Irure anim in do tempor in proident mollit veniam minim qui sunt irure laboris.', 
            style: TextStyle(color: Colors.white, fontSize: 12),
            textAlign: TextAlign.justify,
          ),
        ],
      )
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Dietechtic',
      style: TextStyle(
        color: Colors.black, 
        fontSize: 32, 
        fontWeight: FontWeight.bold
      ),
    );
  }
}

class _ActionsFooter extends StatelessWidget {
   _ActionsFooter({
    @required this.screenSize,
    @required this.pageController, 
    @required this.numPaginas,
  });

  final Size screenSize;
  final PageController pageController;
  final int numPaginas;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: screenSize.height*0.1,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _saltar(context),
          _siguiente(context),
        ],
      ),
    );
  }

  _saltar(BuildContext context) {
    return FlatButton(
      onPressed: (){
        Navigator.pushNamed(context, 'login');
      }, 
      child: Text(
        'Saltar',
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }

  _siguiente(BuildContext context) {
    return FlatButton(
      onPressed: (){
        if(pageController.page == numPaginas-1){
          Navigator.pushNamed(context, 'login');
        }else{
          pageController.nextPage(duration: Duration(milliseconds: 1000), curve: Curves.fastOutSlowIn);
        }        
      }, 
      child: Text(
        'Siguiente',
        style: TextStyle(color: Colors.white, fontSize: 18),
      )
    );
  }

}
*/ */
