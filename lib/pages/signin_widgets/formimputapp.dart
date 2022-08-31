import 'package:flutter/material.dart';

class FormImputApp extends StatelessWidget {
  const FormImputApp({
    Key? key,
    required GlobalKey<FormState> nombre,
    required String stringDatos,
  })  : _nombre = nombre,
        _stringDatos = stringDatos,
        super(key: key);

  final GlobalKey<FormState> _nombre;
  final String _stringDatos;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 25.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Theme.of(context).dividerColor,
        ),
        child: TextFormField(
          key: _nombre,
          decoration: InputDecoration(labelText: _stringDatos),
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
        ));
  }
}
