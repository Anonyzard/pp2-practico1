import 'package:flutter/material.dart';
import 'package:proyecto1practica2/pages/main_screens_widgets/body.dart';

class Drawers extends StatelessWidget {
  const Drawers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 300,
      backgroundColor: Colors.orange.shade100,
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Theme.of(context).backgroundColor,
                      Theme.of(context).secondaryHeaderColor,
                    ])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/users/user_male.png",
                      width: 50,
                      height: 50,
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Hola usuario",
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        Text("CUENTA PREMIUM",
                            style: Theme.of(context).textTheme.headline1)
                      ],
                    )
                  ],
                ),
                Container(
                  width: 250,
                  decoration: BoxDecoration(
                      color: Theme.of(context).backgroundColor,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      border: Border.all(color: Colors.black)),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Text(
                      "cerrar sesion",
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    onPressed: () {},
                    elevation: 30,
                  ),
                )
              ],
            ),
          ),
          options(context, "Inicio", Icons.home_outlined, () {
            Navigator.pop(context);
          }),
          options(context, "Buscar", Icons.search, null),
          options(context, "Mi cuenta", Icons.account_circle_outlined, null),
        ],
      ),
    );
  }
}

ListTile options(BuildContext context, newtitle, newIcon, ruta) {
  return ListTile(
      leading: Icon(
        newIcon,
        size: 35,
        color: Colors.black,
      ),
      title: Text(
        newtitle,
        style: Theme.of(context).textTheme.headline1,
      ),
      onTap: ruta);
}
