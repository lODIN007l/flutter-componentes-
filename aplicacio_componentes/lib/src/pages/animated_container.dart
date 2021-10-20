import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContanerPage extends StatefulWidget {
  AnimatedContanerPage({Key? key}) : super(key: key);

  @override
  _AnimatedContanerPageState createState() => _AnimatedContanerPageState();
}

class _AnimatedContanerPageState extends State<AnimatedContanerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;
  BorderRadiusGeometry _borderradius = BorderRadius.circular(9.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('contenedor animado'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          decoration: BoxDecoration(borderRadius: _borderradius, color: _color),
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _cambiarFormadelConenedor,
        child: Icon(
          Icons.play_arrow,
          color: Colors.indigo,
        ),
      ),
      backgroundColor: Colors.amber,
    );
  }

  void _cambiarFormadelConenedor() {
    final random = Random();
    setState(() {
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
          random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
      _borderradius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }
}
