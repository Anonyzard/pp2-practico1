import 'package:flutter/material.dart';
import 'package:proyecto1practica2/login.dart';
import 'package:proyecto1practica2/pages/main_screen.dart';

class start_buttons extends StatelessWidget {
  const start_buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            // color: Color.fromARGB(255, 201, 117, 21),
          ),
          child: OutlinedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Login()));
            },
            child: Text(
              'Log In',
              style: TextStyle(
                color: Theme.of(context).highlightColor,
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
              MaterialPageRoute(builder: (context) => const main_screens()),
            );
          },
          child: Text(
            'Iniciar sesión',
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
        ),
      ),
    ]);
  }
}
