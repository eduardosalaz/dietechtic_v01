import 'package:dietechtic_v01/src/utils/authentication_service.dart';
import 'package:dietechtic_v01/src/widgets/footer_general.dart';
import 'package:dietechtic_v01/src/widgets/header_general.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => new _LandingPageState();
}
//checar si no se puede hacer en stateless

class _LandingPageState extends State<LandingPage> {
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
                    Text(
                      'Como es tu primera vez, te haremos algunas preguntas de información',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    RaisedButton(
                      child: Text('Siguiente'),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/info_basica');
                      },
                    )
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
        crossAxisAlignment: CrossAxisAlignment.center,
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
