import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:pokemon_dictionary/pages/tabs/fire_pokemon_tab.dart';
import 'package:pokemon_dictionary/pages/tabs/leaf_pokemon_tab.dart';
import 'package:pokemon_dictionary/pages/tabs/water_pokemon_tab.dart';

class PokeListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Text('Seleccionar Elemento!', style: TextStyle()),
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(text: 'Fuego', icon: Icon(MdiIcons.fire)),
                Tab(text: 'Hoja', icon: Icon(MdiIcons.leaf)),
                Tab(text: 'Agua', icon: Icon(MdiIcons.water)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              FirePokemonTab(),
              LeafPokemonTab(),
              WaterPokemonTab(),
            ],
          ),
        ),
      ),
    );
  }
}
