import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SLIDERS'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            _crearSlider(),
            //_crearCheckBox(),
            Expanded(child: _crearImagen())
          ],
        ),
      ),
    );
  }

  _crearSlider() {
    return Slider(
        activeColor: Colors.indigoAccent,
        label: 'Tamaño de la imagen',
        value: _valorSlider,
        min: 10.0,
        max: 400.0,
        onChanged: (valor) {
          setState(() {
            _valorSlider = valor;
          });
        });
  }

  _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://i1.wp.com/hipertextual.com/wp-content/uploads/2021/08/batman-scaled.jpeg?fit=2560%2C1440&ssl=1'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}
