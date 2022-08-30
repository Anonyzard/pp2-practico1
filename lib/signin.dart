import 'package:flutter/material.dart';

import 'package:proyecto1practica2/pages/main_screen.dart';

void main() => runApp(const Signin());

class Signin extends StatelessWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _nombre = GlobalKey<FormState>();
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
                Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 50.0, vertical: 25.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Theme.of(context).dividerColor,
                    ),
                    child: TextFormField(
                      key: _nombre,
                      decoration:
                          const InputDecoration(labelText: 'Ingrese su nombre'),
                      obscureText: false,
                      // keyboardType: TextInputType.emailAddress,
                      // maxLength: 32,
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor ingrese su nombre';
                        }
                        return null;
                      },
                    )),
                Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 50.0, vertical: 25.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Theme.of(context).dividerColor,
                    ),
                    child: TextFormField(
                      // key: _nombre,
                      decoration: const InputDecoration(
                          labelText: 'Ingrese su apellido'),
                      obscureText: false,
                      // keyboardType: TextInputType.emailAddress,
                      // maxLength: 32,
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor ingrese su apellido';
                        }
                        return null;
                      },
                    )),
                Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 50.0, vertical: 25.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Theme.of(context).dividerColor,
                    ),
                    child: TextFormField(
                      // key: _nombre,
                      decoration:
                          const InputDecoration(labelText: 'Ingrese su email'),
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress,
                      // maxLength: 32,
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor ingrese su email';
                        }
                        return null;
                      },
                    )),
                Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 50.0, vertical: 25.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Theme.of(context)
                            .dividerColor //Color.fromRGBO(255, 201, 117, 21),
                        ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Ingrese su constraseña'),
                      obscureText: true,
                    )),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      // color: Color.fromARGB(255, 201, 117, 21),
                    ),
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    )),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color.fromARGB(255, 201, 117, 21),
                  ),
                  child: MaterialButton(
                    color: Theme.of(context)
                        .backgroundColor, //Color.fromARGB(255, 201, 117, 21),
                    // style: ButtonStyle(
                    //     backgroundColor: Color.fromARGB(255, 201, 117, 21)), //,
                    onPressed: () {
                      // // Validate returns true if the form is valid, or false otherwise.
                      // if (_nombre.currentState!.validate()) {
                      //   // If the form is valid, display a snackbar. In the real world,
                      //   // you'd often call a server or save the information in a database.
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //     const SnackBar(content: Text('Processing Data')),
                      //   );
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const main_screens()),
                      );
                    },
                    child: Text(
                      'Iniciar sesión',
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                  ),
                ),
              ])
            ],
          ),
        ));
  }
}
