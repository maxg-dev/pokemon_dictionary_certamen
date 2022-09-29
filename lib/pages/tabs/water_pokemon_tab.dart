import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:pokemon_dictionary/widgets/list_pokemon.dart';

import '../pokemon/magikarp_page.dart';

class WaterPokemonTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(children: [
        ListPokemon(
            nombre: 'Magikarp',
            descripcion: 'lvl 100',
            tipo: MdiIcons.water,
            pagina: MagikarpPage()),
        Divider(),
        ListPokemon(
            nombre: 'Vaporeon', descripcion: 'bonito', tipo: MdiIcons.water),
      ]),
    );
  }
}
