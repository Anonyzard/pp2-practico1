import 'package:flutter/material.dart';
import 'package:proyecto1practica2/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      theme: ThemeData(
          backgroundColor: Color.fromARGB(255, 3, 65, 153),
          primaryColor: Colors.grey.shade300,
          secondaryHeaderColor: Color.fromARGB(255, 236, 75, 35),
          highlightColor: Color.fromARGB(235, 3, 0, 27),
          textTheme: const TextTheme(
              headline1: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black), //NOMBRE DE LOS PRODUCTOS Y PRECIO
              headline2: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              headline3: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontStyle: FontStyle.normal) //BOTON COMPRAR DEL CATALOGO
              )),
    );
  }
}
