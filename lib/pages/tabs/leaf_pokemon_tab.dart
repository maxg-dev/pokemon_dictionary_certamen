import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../widgets/list_pokemon.dart';

class LeafPokemonTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(children: [
        ListPokemon(
            nombre: 'Bolbasour',
            descripcion: 'Lechuga superpoderosa',
            tipo: MdiIcons.leaf),
        Divider(),
        ListPokemon(
            nombre: 'Raykuaza',
            descripcion: 'Moskito verde',
            tipo: MdiIcons.leaf),
      ]),
    );
  }
}
