import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:proyecto1practica2/signin.dart';
import 'package:proyecto1practica2/pages/main_screen.dart';

void main() => runApp(Login());

// class MyCustomForm extends StatefulWidget {
//   const MyCustomForm({super.key}); // #ffaa33 #c97515

//   @override
//   MyCustomFormState createState() {
//     return MyCustomFormState();
//   }
// }

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _nombre = GlobalKey<FormState>();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Todo por 2 pesos'),
          backgroundColor: Color.fromARGB(255, 201, 117, 21),
        ),
        backgroundColor: Color.fromRGBO(255, 201, 117, 21),
        body: Column(children: <Widget>[
          Container(
              margin: EdgeInsets.symmetric(horizontal: 50.0, vertical: 50.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromRGBO(255, 201, 117, 21),
              ),
              child: TextFormField(
                key: _nombre,
                decoration: InputDecoration(labelText: 'Ingrese su nombre'),
                obscureText: false,
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese su nombre';
                  }
                  return null;
                },
              )),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 50.0, vertical: 50.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromRGBO(255, 201, 117, 21),
              ),
              child: TextFormField(
                decoration:
                    InputDecoration(labelText: 'Ingrese su constraseña'),
                obscureText: true,
              )),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                // color: Color.fromARGB(255, 201, 117, 21),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signin()),
                  );
                },
                child: Text('Sign In'),
              )),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color.fromARGB(255, 201, 117, 21),
            ),
            child: ElevatedButton(
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
                  MaterialPageRoute(builder: (context) => main_screens()),
                );
              },
              child: const Text('Iniciar sesión'),
            ),
          ),
        ]),
      ),
    );
  }
}
