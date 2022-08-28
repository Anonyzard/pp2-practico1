import 'package:flutter/material.dart';
import 'package:proyecto1practica2/pages/main_screens_widgets/body.dart';
import 'package:proyecto1practica2/pages/main_screens_widgets/drawer.dart';
import 'package:proyecto1practica2/pages/main_screens_widgets/navbar.dart';

// ignore: camel_case_types
class main_screens extends StatelessWidget {
  const main_screens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade100,
      appBar: Appbar(context),
      drawer: const Drawers(),
      body: const Allbody(),
    );
  }
}
