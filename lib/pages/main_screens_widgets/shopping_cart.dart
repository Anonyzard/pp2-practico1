import 'package:flutter/material.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: barra(context),
      body: const botones_superiores(),
    );
  }
}

// ignore: camel_case_types
class botones_superiores extends StatelessWidget {
  const botones_superiores({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Theme.of(context).backgroundColor,
      child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MaterialButton(
              height: 50,
              minWidth: 188,
              onPressed: () {},
              child: Text(
                "Carrito",
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            MaterialButton(
              height: 50,
              minWidth: 188,
              onPressed: () {},
              child: Text(
                "Guardado",
                style: Theme.of(context).textTheme.headline3,
              ),
            )
          ],
        )
      ]),
    );
  }
}

AppBar barra(BuildContext context) {
  return AppBar(
    elevation: 30,
    backgroundColor: Theme.of(context).backgroundColor,
    title: Text(
      "Carrito de compras",
      style: Theme.of(context).textTheme.headline3,
    ),
  );
}
