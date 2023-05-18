import 'package:flutter/material.dart';

class ListView2 extends StatelessWidget {
  var games = ["pou", "fornite", "pacman", "mortal kombat"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List view tipo2'),
        ),
        body: ListView.separated(
          //obtener el tamaño de mi lista
          itemCount: games.length,
          itemBuilder: (context, index) => ListTile(
            //asignamos el titulo apartir de mi lista
            title: Text(games[index]),
            //asignamos el icono a cada elemento
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.pink[300],
            ),
            onTap: () {
              var seleccion = games[index];
              print(seleccion);
            },
          ),
          separatorBuilder: (_, __) => Divider(),
        ));
  }
}
