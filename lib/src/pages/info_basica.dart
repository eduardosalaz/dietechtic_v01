import 'package:dietechtic_v01/src/widgets/footer_general.dart';
import 'package:dietechtic_v01/src/widgets/header_general.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InfoBasicaPage extends StatefulWidget {
  @override
  _InfoBasicaPageState createState() => new _InfoBasicaPageState();
}

class _InfoBasicaPageState extends State<InfoBasicaPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
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
                padding: EdgeInsets.only(
                    left: screenSize.width * 0.12,
                    right: screenSize.width * 0.12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: screenSize.height * 0.25,
                    ),
                    SizedBox(
                      height: screenSize.height * 0.025,
                    ),
                    /*Text(
                      'Nombre completo',
                      style: TextStyle(
                        color: Color(0xff73a270),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                        labelText: 'Nombre Completo',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Edad',
                      style: TextStyle(
                        color: Color(0xff73a270),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    TextField(
                      controller: ageController,
                      decoration: InputDecoration(
                          labelText: 'Teclea tu edad en número de años'),
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Género',
                      style: TextStyle(
                        color: Color(0xff73a270),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Dropdown(),
                    RaisedButton(
                      child: Text('Enviar Datos'),
                      onPressed: () {
                        String nombre = nameController.text.trim();
                        int edad = ageController.text as int;
                        //String genero = value;
                      },
                    )*/
                    MyCustomForm(),
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

class Dropdown extends StatefulWidget {
  @override
  _DropdownState createState() => new _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  String _value;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        items: [
          DropdownMenuItem<String>(
            child: Text('Masculino'),
            value: 'm',
          ),
          DropdownMenuItem<String>(child: Text('Femenino'), value: 'f')
        ],
        onChanged: (String value) {
          setState(() {
            _value = value;
          });
        },
        hint: Text('Selecciona tu género'),
        value: _value,
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  String _value;
  List<String> generos = ["Masculino", "Femenino"];
  String dropdownValue = "Masculino";

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Text(
            'Nombre completo',
            style: TextStyle(
              color: Color(0xff73a270),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return nameController.text.trim();
            },
            controller: nameController,
            decoration: InputDecoration(
              labelText: 'Nombre Completo',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Edad',
            style: TextStyle(
              color: Color(0xff73a270),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return ageController.text.trim();
            },
            controller: ageController,
            decoration:
                InputDecoration(labelText: 'Teclea tu edad en número de años'),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Género',
            style: TextStyle(
              color: Color(0xff73a270),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          DropdownButtonFormField<String>(
            value: dropdownValue,
            hint: Text('Seleccione su género'),
            onChanged: (String nuevo) {
              setState(() {
                dropdownValue = nuevo;
              });
            },
            validator: (String value) {
              if (value?.isEmpty ?? true) {
                return 'Error';
              }
            },
            items: generos.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onSaved: (val) => setState(() => _value),
          ),
          SizedBox(height: 20),
          RaisedButton(
            child: Text(
              'Mandar datos',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            onPressed: () {
              leerDatos();
            },
            elevation: 5.0,
            color: Color(0xff73a720),
            splashColor: Color(0xff567c18),
            animationDuration: Duration(seconds: 1),
          ),
        ],
      ),
    );
  }

  void leerDatos() {
    String nombre = nameController.text.trim();
    String edad = ageController.text.trim();
    String genero = dropdownValue;
    var lst = new List(3);
    lst[0] = nombre;
    lst[1] = edad;
    lst[2] = genero;
    Navigator.of(context).pushNamed('/mandar_datos', arguments: lst);
  }
}
//checar si no se puede hacer en stateless
