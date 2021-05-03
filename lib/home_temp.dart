import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco', 'Seis'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widgets App'),
      ),
      body: ListView(children: _crearItems(context)),
    );
  }

  List<Widget> _crearItems(BuildContext context) {
    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
        subtitle: Text('Subtitulo ' + opt),
        leading: Icon(Icons.add_alert),
        trailing: Icon(Icons.keyboard_arrow_right_rounded),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => _buildPopUpDialog(context, opt),
          );
        },
      );

      lista..add(tempWidget)..add(Divider());

      // lista.add(tempWidget);

      // lista.add(Divider());

    }

    return lista;
  }

  Widget _buildPopUpDialog(BuildContext context, String opt) {
    return new AlertDialog(
      title: const Text('Me diste click'),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Hola soy la opcion ' + opt),
        ],
      ),
      actions: <Widget>[
        new FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          textColor: Theme.of(context).primaryColor,
          child: const Text('Cerrar'),
        ),
      ],
    );
  }
}
