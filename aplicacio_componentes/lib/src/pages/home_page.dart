import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['uno', 'DOS', 'TRES', 'Cuatro', 'Cinco'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        title: Text('COMPONENTES TEMP'),
        backgroundColor: Colors.cyan,
      ),
      body: ListView(children: _crearItems2()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = [];

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
        tileColor: Colors.white,
      );
      lista
        ..add(tempWidget)
        ..add(Divider(
          color: Colors.amber,
          height: 18.5,
        ));
    }
    ;

    return lista;
  }

  List<Widget> _crearItems2() {
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item + '!'),
            leading: Icon(Icons.ac_unit_rounded),
            trailing: Icon(Icons.account_box_sharp),
            onTap: () {},
          ),
          Divider(
            color: Colors.amber,
            height: 18.5,
          )
        ],
      );
    }).toList();
    return [];
  }
}
