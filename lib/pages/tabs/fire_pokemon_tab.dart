import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:pokemon_dictionary/widgets/list_pokemon.dart';

class FirePokemonTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(children: [
        ListPokemon(
            nombre: 'Charmander',
            tipo: MdiIcons.fire,
            descripcion: 'El que todos eligen')
      ]),
    );
  }
}
