import 'package:flutter/material.dart';

void main() => runApp(Signin());

class Signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo por 2 pesos',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Todo por 2 pesos'),
        ),
        body: Column(children: <Widget>[
          Container(
              child: TextFormField(
            decoration: InputDecoration(labelText: 'Ingrese su nombre'),
            obscureText: false,
          )),
          Container(
              child: TextFormField(
            decoration: InputDecoration(labelText: 'Ingrese su constraseña'),
            obscureText: true,
          )),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                // color: Color.fromARGB(255, 201, 117, 21),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Log In'),
              )),
        ]),
      ),
    );
  }
}
