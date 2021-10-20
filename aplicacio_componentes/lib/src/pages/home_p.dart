import 'package:aplicacio_componentes/src/pages/alert_page.dart';
import 'package:aplicacio_componentes/src/pages/providers/menu_provider.dart';
import 'package:aplicacio_componentes/src/utils/icono_string_metd.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuPorvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];
    data.forEach((opt) {
      final WidgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: obtenerIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);
        },
      );
      opciones.add(WidgetTemp);
    });
    return opciones;
  }
}
