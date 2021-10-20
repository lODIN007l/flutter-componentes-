import 'package:aplicacio_componentes/src/pages/alert_page.dart';
import 'package:aplicacio_componentes/src/pages/animated_container.dart';
import 'package:aplicacio_componentes/src/pages/avatar_page.dart';
import 'package:aplicacio_componentes/src/pages/card_pages.dart';
import 'package:aplicacio_componentes/src/pages/home_p.dart';
import 'package:aplicacio_componentes/src/pages/input_page.dart';
import 'package:aplicacio_componentes/src/pages/listview_page.dart';
import 'package:aplicacio_componentes/src/pages/slider_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> obtenerRutas() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext context) => AnimatedContanerPage(),
    'inputs': (BuildContext context) => InputPage(),
    'slider': (BuildContext context) => SliderPage(),
    'list': (BuildContext context) => ListaPage(),
  };
}
