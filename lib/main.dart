import 'package:flutter/material.dart';
import 'package:proyecto1practica2/login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Login(),
      theme: ThemeData(
          backgroundColor: Color.fromARGB(255, 201, 117, 21),
          primaryColor: Colors.grey.shade300,
          secondaryHeaderColor: Colors.orange.shade100,
          highlightColor: const Color.fromARGB(235, 3, 0, 27),
          dividerColor: Color.fromARGB(255, 255, 224, 178),
          textTheme: const TextTheme(
              headline1: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black), //NOMBRE DE LOS PRODUCTOS Y PRECIO
              headline2: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              headline3: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontStyle: FontStyle.normal) //BOTON COMPRAR DEL CATALOGO
              )),
    );
  }
}
