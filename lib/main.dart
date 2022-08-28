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
          backgroundColor: const Color.fromARGB(255, 201, 117, 21),
          primaryColor: Colors.grey.shade300,
          secondaryHeaderColor: Colors.orange.shade100,
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
