import 'package:dietechtic_v01/src/utils/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dietechtic_v01/src/widgets/header_login.dart';
import 'package:dietechtic_v01/src/widgets/footer_login.dart';

class RegistroPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  createAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Usuario Registrado'),
            content: Text('Se ha registrado al usuario de manera exitosa'),
            actions: <Widget>[
              MaterialButton(
                  child: Text('Volver a la pantalla de inicio'),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/');
                  })
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
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
                    SizedBox(
                      height: screenSize.height * 0.25,
                    ),
                    _WelcomeMessage(),
                    SizedBox(
                      height: screenSize.height * 0.025,
                    ),
                    Container(
                      width: screenSize.width * 0.65,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          TextFormField(
                            controller: emailController,
                            decoration:
                                InputDecoration(hintText: 'Correo electrónico'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: passwordController,
                            obscureText: true,
                            decoration: InputDecoration(hintText: 'Contraseña'),
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          RaisedButton(
                            onPressed: () {
                              String email = emailController.text.trim();
                              String pass = passwordController.text.trim();
                              context
                                  .read<AuthenticationService>()
                                  .signUp(email: email, password: pass);
                              createAlertDialog(context);
                            },
                            color: Theme.of(context).primaryColor,
                            textColor: Colors.white,
                            child: Center(
                              child: Text(
                                'Registrar',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ),
                            shape: StadiumBorder(),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height * 0.025,
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
          Text(
            'Registro de Cuenta',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
          ),
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
