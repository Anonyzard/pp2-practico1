import 'package:flutter/material.dart';
import 'package:proyecto1practica2/pages/main_screens_widgets/drawer.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AllbodySC(),
      drawer: Drawers(),
    );
  }
}

class AllbodySC extends StatelessWidget {
  const AllbodySC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [appbar2(), carrito_screen(context)]);
  }
}

class appbar2 extends StatelessWidget {
  const appbar2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 400,
      color: Theme.of(context).backgroundColor,
      child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          const SizedBox(width: 10),
          IconButton(
            autofocus: true,
            iconSize: 30,
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          Text(
            "Carrito de compras",
            style: Theme.of(context).textTheme.headline3,
          )
        ]),
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

Container carrito_screen(BuildContext context) {
  return Container(
    height: 600,
    color: Theme.of(context).secondaryHeaderColor,
  );
}

Container guardado_screen() {
  return Container(
    height: 600,
    color: Colors.red,
  );
}
