import 'package:flutter/material.dart';
import 'package:proyecto1practica2/pages/main_screens_widgets/shopping_cart.dart';

// ignore: non_constant_identifier_names
AppBar Appbar(BuildContext context) {
  return AppBar(
    centerTitle: true,
    automaticallyImplyLeading: true,
    elevation: 30,
    backgroundColor: Theme.of(context).backgroundColor,
    title: Text(
      "TP2P",
      style: Theme.of(context).textTheme.headline1,
      textAlign: TextAlign.start,
    ),
    actions: [
      Stack(alignment: Alignment.center, children: [
        MaterialButton(
          height: 50,
          elevation: 20,
          color: Theme.of(context).backgroundColor,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ShoppingCart()));
          },
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.0)),
          child: const Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(35, 20, 0, 0),
          decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          height: 15,
          width: 15,
          child: const Text(
            "0",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 11),
          ),
        )
      ]),
    ],
  );
}
