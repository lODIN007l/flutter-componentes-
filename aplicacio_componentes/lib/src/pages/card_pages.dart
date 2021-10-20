import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text('CARDS'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          _cartTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cartTipo2(),
        ],
      ),
    );
  }

  Widget _cartTipo1() {
    return Card(
      color: Colors.amberAccent,
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blueAccent,
            ),
            title: Text('SOY EL TITULO DE LA TARJETA'),
            subtitle: Text(
                'Este es el espacio de deonde se realiza el subtitulo de esta aplicaacion '),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(onPressed: () {}, child: Text('Cancelar')),
              FlatButton(onPressed: () {}, child: Text('OK'))
            ],
          )
        ],
      ),
    );
  }

  Widget _cartTipo2() {
    final card = Container(
      child: Column(
        children: [
          //loader de imagen
          FadeInImage(
            fadeInDuration: Duration(milliseconds: 200),
            image: NetworkImage('https://wallpapercave.com/wp/wp8518463.jpg'),
            placeholder: AssetImage('data/assets/jar-loading.gif'),
            height: 250.0,
            width: 700.0,
            fit: BoxFit.fill,
          ),

          //Image(
          //  image: NetworkImage('https://wallpapercave.com/wp/wp8518463.jpg'),
          //),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'no tengo idea de que poner ',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          )
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.pinkAccent,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26, blurRadius: 10.0, spreadRadius: 2.0)
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}
