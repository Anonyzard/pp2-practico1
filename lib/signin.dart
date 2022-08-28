import 'package:flutter/material.dart';

void main() => runApp(Signin());

class Signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
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
        ]),
      ),
    );
  }
}
