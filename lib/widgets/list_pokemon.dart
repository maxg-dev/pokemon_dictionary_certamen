import 'package:flutter/material.dart';

class ListPokemon extends StatelessWidget {
  final nombre;
  final descripcion;
  final tipo;
  final pagina;

  const ListPokemon({
    Key? key,
    this.nombre = '',
    this.descripcion = '',
    this.tipo = null,
    this.pagina = null,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('${this.nombre}'),
      subtitle: Text('${this.descripcion}'),
      leading: Icon(this.tipo),
      onTap: () {
        MaterialPageRoute route = MaterialPageRoute(
          builder: (context) => pagina,
        );
        Navigator.pop(context);
        Navigator.push(context, route);
      },
    );
  }
}
