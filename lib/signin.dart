import 'package:flutter/material.dart';

import 'package:proyecto1practica2/pages/main_screen.dart';
import 'package:proyecto1practica2/pages/signin_widgets/button_signin.dart';
import 'package:proyecto1practica2/pages/signin_widgets/formimputapp.dart';

void main() => runApp(const Signin());

class Signin extends StatelessWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _nombre = GlobalKey<FormState>();
    final _apellido = GlobalKey<FormState>();
    final _emali = GlobalKey<FormState>();
    final _contrasena = GlobalKey<FormState>();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Todo por 2 pesos'),
            backgroundColor: Theme.of(context)
                .backgroundColor, //Color.fromARGB(255, 201, 117, 21),
          ),
          backgroundColor: Theme.of(context)
              .secondaryHeaderColor, //Color.fromRGBO(255, 201, 117, 21),
          body: ListView(
            children: [
              Column(children: <Widget>[
                Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 50.0, vertical: 50.0),
                    child: (Image.asset(
                      'assets/logo/logoapptodopordospesos.png',
                      width: 100,
                      height: 100,
                    ))),
                FormImputApp(nombre: _nombre, stringDatos: "Ingrese su nombre"),
                FormImputApp(
                    nombre: _apellido, stringDatos: "Ingrese su apellido"),
                FormImputApp(nombre: _emali, stringDatos: "Ingrese su email"),
                FormImputApp(
                    nombre: _contrasena, stringDatos: "Ingrese su contraseña"),
              ]),
              start_buttons()
            ],
          ),
        ));
  }
}
