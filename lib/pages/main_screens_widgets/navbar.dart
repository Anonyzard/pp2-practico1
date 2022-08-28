import 'package:flutter/material.dart';
import 'package:proyecto1practica2/pages/main_screens_widgets/shopping_cart.dart';

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
      MaterialButton(
        height: 10,
        elevation: 20,
        color: Theme.of(context).backgroundColor,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ShoppingCart()));
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0)),
        child: const Icon(
          Icons.shopping_cart,
          color: Colors.white,
        ),
      ),
    ],
  );
}
