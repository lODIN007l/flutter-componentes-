import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _email = '';
  String _pass = '';
  //String _fecha = '';
  //String _opcionSeleccionada = '';

  //TextEditingController _cambiadordeTextoSleecionado =
  //    new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('INPUTSS'),
      ),
      body: Container(
        color: Colors.redAccent[50],
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          children: [
            _creaInput(),
            Divider(),
            _crearEmail(),
            Divider(),
            _crearContrasenia(),
            Divider(),
            //_crearFecha(context),
            //Divider(),
            //_crearDropDown(),
            //Divider(),
            _crearPersona()
          ],
        ),
      ),
    );
  }

  _creaInput() {
    return TextField(
      //autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          counter: Text('Letras ${_nombre.length}'),
          hintText: 'Nombre de la persona',
          labelText: 'Nombre',
          helperText: 'Solo el nombre',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle)),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  _crearPersona() {
    return ListTile(
      title: Text('Nombre es : $_nombre'),
      subtitle: Text('Email: $_email'),
      //trailing: Text(_opcionSeleccionada),
    );
  }

  _crearEmail() {
    return TextField(
      //autofocus: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Correo de la persona',
          labelText: 'Email',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email)),
      onChanged: (valor) {
        setState(() {
          _email = valor;
        });
      },
    );
  }

  _crearContrasenia() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Contraseña de la persona',
          labelText: 'Contraseña',
          suffixIcon: Icon(Icons.lock_open),
          icon: Icon(Icons.lock)),
      onChanged: (valor) {
        setState(() {
          _pass = valor;
        });
      },
    );
  }

  /* crearFecha(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _cambiadordeTextoSleecionado,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Fecha de naciomiento',
          labelText: 'Fecha de naciomiento',
          suffixIcon: Icon(Icons.calendar_today_outlined),
          icon: Icon(Icons.calendar_today_rounded)),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _seleccionarFecha(context);
      },
    );
  } */

  /* _seleccionarFecha(BuildContext context) async {
    DateTime? fechaSeleccionada = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2018),
        lastDate: DateTime(2025));
    locale:
    Locale('es', 'ES');

    if (fechaSeleccionada != null) {
      setState(() {
        _fecha = fechaSeleccionada.toString();
        _cambiadordeTextoSleecionado.text = _fecha;
      });
    }
  } */

}
