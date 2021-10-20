import 'dart:async';

import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  ListaPage({Key? key}) : super(key: key);

  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  ScrollController _controladorScroll = new ScrollController();

  List<int> _listaN = [];
  int _ultimoitem = 0;
  bool _cargandoItem = false;

  @override
  void initState() {
    super.initState();
    _agregar10();
    _controladorScroll.addListener(() {
      if (_controladorScroll.position.pixels ==
          _controladorScroll.position.maxScrollExtent) {
        //_agregar10();
        obtenerData();
      }
    });
  }

//para eliminar los listeners al salir de la pagina
  @override
  void dispose() {
    super.dispose();
    _controladorScroll.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Listas'),
        ),
        body: Stack(
          children: [_crearLista(), _crearLoading()],
        ));
  }

  _crearLista() {
    return RefreshIndicator(
      onRefresh: _obtenerPgina1,
      child: ListView.builder(
        controller: _controladorScroll,
        itemBuilder: (BuildContext context, int index) {
          final imagen = _listaN[index];
          return FadeInImage(
              placeholder: AssetImage('data/assets/jar-loading.gif'),
              image:
                  NetworkImage('https://picsum.photos/500/300?image=$imagen'));
        },
        itemCount: _listaN.length,
      ),
    );
  }

  _agregar10() {
    for (var i = 1; i < 10; i++) {
      _ultimoitem++;
      _listaN.add(_ultimoitem);
    }
    setState(() {});
  }

  Future obtenerData() async {
    _cargandoItem = true;
    setState(() {});
    final _duracion = new Duration(seconds: 2);
    return new Timer(_duracion, respuestHTTP);
  }

  void respuestHTTP() {
    _cargandoItem = false;
    _controladorScroll.animateTo(_controladorScroll.position.pixels + 100,
        curve: Curves.fastOutSlowIn, duration: Duration(milliseconds: 250));
    _agregar10();
  }

  _crearLoading() {
    if (_cargandoItem) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [CircularProgressIndicator()],
          ),
          SizedBox(
            height: 15.0,
          )
        ],
      );
    } else {
      return Container();
    }
  }

  Future<void> _obtenerPgina1() async {
    final duracion = new Duration(seconds: 2);
    await new Timer(duracion, () {
      _listaN.clear();
      _ultimoitem++;
      _agregar10();
    });
    return Future.delayed(duracion);
  }
}
