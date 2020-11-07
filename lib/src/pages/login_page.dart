import 'package:dietechtic_v01/src/pages/register_page.dart';
import 'package:dietechtic_v01/src/widgets/footer_login.dart';
import 'package:dietechtic_v01/src/widgets/header_login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dietechtic_v01/src/authentication_service.dart';
import 'package:provider/provider.dart';


import 'home.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
            children: <Widget>[
            HeaderLogin(),
        FooterLogin(),
        SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: screenSize.width * 0.12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
            SizedBox(height: screenSize.height * 0.25,),
            _WelcomeMessage(),
            SizedBox(height: screenSize.height * 0.025,),
            Container(
              width: screenSize.width * 0.65,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Correo electrónico'
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(
                        labelText: 'Contraseña',
                        hintText: 'Contraseña'
                    ),
                    obscureText: true,
                  ), SizedBox(height: 35,),
                  RaisedButton(
                    onPressed: () {
                      context.read<AuthenticationService>().signIn(
                          email: emailController.text.trim(),
                          password: passwordController.text.trim());
                    },
                    color: Theme
                        .of(context)
                        .primaryColor,
                    textColor: Colors.white,
                    child: Center(child: Text('Ingresar', style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),),),
                    shape: StadiumBorder(),
                  ),
                  SizedBox(height: screenSize.height * 0.025,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                          onTap: () {
                            Navigator.of(context).push(new RegisterRoute());
                          },
                          child: RichText(
                              text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: '¿No tienes una cuenta? ',
                                        style: TextStyle(color: Colors.grey,
                                            fontSize: 16)),
                                    TextSpan(text: 'Registrate',
                                        style: TextStyle(color: Colors.grey,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                  ]
                              )
                          )
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


class RegisterRoute extends CupertinoPageRoute {
  RegisterRoute() : super(builder: (BuildContext context) => RegistroPage());

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return new FadeTransition(opacity: animation, child: new RegistroPage());
  }
}

class HomeRoute extends CupertinoPageRoute {
  HomeRoute() : super(builder: (BuildContext context) => HomePage());

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return new FadeTransition(opacity: animation, child: new HomePage());
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
          Text(
            'Bienvenido',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25
            ),
          ),
          SizedBox(height: 20,),
          Text(
            'Dietechtic',
            style: TextStyle(
                color: Color(0xff73a270),
                fontWeight: FontWeight.bold,
                fontSize: 45
            ),
          ),
        ],
      ),
    );
  }
}
