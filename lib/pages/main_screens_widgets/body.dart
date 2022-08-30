import 'package:flutter/material.dart';

class Productos {
  int id;
  String nombre;
  dynamic foto;
  String precio;

  Productos(this.id, this.nombre, this.foto, this.precio);
}

var producto1 = Productos(01, "Cocina", "assets/products/cocina.png", "50000");
var producto2 =
    Productos(02, "Heladera", "assets/products/heladera.png", "90000");
var producto3 =
    Productos(03, "Lavarropa", "assets/products/labarropa.png", "70000");
var producto4 =
    Productos(04, "Microondas", "assets/products/microondas.png", "40000");

class Allbody extends StatelessWidget {
  const Allbody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      const Board(),
      catalog(context, "Comedor"),
      catalog(context, "Habitación")
    ]);
  }
}

Container catalog(BuildContext context, nombreCategoria) {
  return Container(
    margin: const EdgeInsets.all(20),
    decoration: BoxDecoration(
        color: Colors.orange.shade200,
        borderRadius: const BorderRadius.all(Radius.circular(10))),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 10,
              ),
              Text(
                nombreCategoria,
                style: Theme.of(context).textTheme.headline1,
              ),
            ],
          ),
          divider()
        ]),
        products(context, producto1.foto, producto1.nombre, producto1.precio),
        products(context, producto2.foto, producto2.nombre, producto2.precio),
        products(context, producto3.foto, producto3.nombre, producto3.precio),
        products(context, producto4.foto, producto4.nombre, producto4.precio),
      ],
    ),
  );
}

Column products(BuildContext context, foto, nombre, precio) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            foto,
            width: 100,
            height: 100,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                nombre,
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                precio + "\$",
                style: Theme.of(context).textTheme.headline1,
              )
            ],
          ),
          Column(
            children: [
              MaterialButton(
                height: 50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                onPressed: () {},
                child: const Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
              ),
              const Text(
                "COMPRAR",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
      divider()
    ],
  );
}

Divider divider() {
  return const Divider(
    color: Colors.black,
    thickness: 3,
    indent: 10,
    endIndent: 10,
    height: 4,
  );
}

class Board extends StatelessWidget {
  const Board({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Theme.of(context).backgroundColor,
            Theme.of(context).secondaryHeaderColor,
          ])),
      height: 150,
      child: ListView(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        scrollDirection: Axis.horizontal,
        children: [
          bulletin1(
            context,
          ),
          oferts(
              context,
              Colors.blue,
              "assets/board/hinchada.png",
              "PROMO MUNDIALISTA",
              Colors.black,
              "assets/board/tvoled.png",
              "TV OLED LG \n52 PULGADAS \n   100000\$ ",
              Colors.white,
              Colors.black12),
          oferts(
              context,
              Colors.purple,
              "assets/board/tecnologia.png",
              "MES DE LA TECNOLOGIA",
              Colors.black,
              "assets/board/laptop.png",
              "LAPTOP LG \nWINDOWS 10 \n   150000\$ ",
              Colors.blue,
              null),
        ],
      ),
    );
  }
}

Card bulletin1(BuildContext context) {
  return Card(
      color: Colors.black,
      elevation: 5,
      borderOnForeground: true,
      shadowColor: Colors.yellow,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: SizedBox(
        height: 150,
        child: Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  "assets/board/primavera.png",
                  fit: BoxFit.fill,
                  width: 300,
                )),
            const Text(
              " \nNO TE PIERDAS\n ESTAS OFERTAS \nDE PRIMAVERA!",
              textAlign: TextAlign.end,
              textDirection: TextDirection.ltr,
              style: TextStyle(
                backgroundColor: Colors.white38,
                color: Colors.purple,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ));
}

Card oferts(BuildContext context, sombracolor, imagenfondo, titulo, colortitulo,
    imagenproducto, informacion, colorinformacion, colorfondoinfo) {
  return Card(
      color: Colors.black,
      elevation: 5,
      borderOnForeground: true,
      shadowColor: sombracolor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: SizedBox(
        height: 150,
        child: Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  imagenfondo,
                  fit: BoxFit.fill,
                  width: 300,
                )),
            Column(children: [
              Text(
                titulo,
                style: TextStyle(
                  color: colortitulo,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    imagenproducto,
                    height: 80,
                    width: 120,
                  ),
                  Text(
                    informacion,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: colorinformacion,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        backgroundColor: colorfondoinfo),
                  )
                ],
              )
            ])
          ],
        ),
      ));
}
