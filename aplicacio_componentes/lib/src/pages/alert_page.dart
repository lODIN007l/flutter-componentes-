import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text('Alerta'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () => _mostrarAlerta(context),
          child: Text(
            'Mostrar Alerta',
            style: TextStyle(fontSize: 20),
          ),
          textColor: Colors.white,
          shape: StadiumBorder(),
          color: Colors.blueAccent,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.backpack),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Text('Titulo'),
          content: Column(mainAxisSize: MainAxisSize.min, children: [
            Text('Este es el contenido de aqui '),
            FlutterLogo(
              size: 100.0,
            )
          ]),
          actions: [
            FlatButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('OK')),
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Cancelar'))
          ],
        );
      },
    );
  }
}
