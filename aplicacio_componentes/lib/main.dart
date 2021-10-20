import 'package:aplicacio_componentes/src/pages/alert_page.dart';
import 'package:aplicacio_componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: obtenerRutas(),
      onGenerateRoute: (setting) {
        return MaterialPageRoute(builder: (context) => AlertPage());
      },
    );
  }
}
