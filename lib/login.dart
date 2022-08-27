import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(Login());

class Login extends StatelessWidget {
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
          Container(
              child: TextButton(
            onPressed: () {},
            child: Text('Text Button'),
          )),
        ]),
      ),
    );
  }
}
