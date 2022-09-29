import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:pokemon_dictionary/pages/poke_list_page.dart';
import 'package:pokemon_dictionary/pages/pokemon/magikarp_page.dart';
import 'package:pokemon_dictionary/widgets/list_pokemon.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int paginaSel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Spacer(),
          Text('Pokemon Dictionary',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          Image(
            width: 100,
            image: AssetImage('assets/img/pokeball.png'),
          ),
          Spacer(),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => navegar(context, PokeListPage()),
              child: Text('Iniciar!'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red)),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Container(
                alignment: Alignment.center,
                child: Icon(MdiIcons.fish, size: 100),
              ),
            ),
            ListPokemon(
              nombre: 'Primer pokemon',
              tipo: MdiIcons.fire,
              descripcion: 'Intento 1 de pokemon',
              pagina: MagikarpPage(),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.red,
          selectedItemColor: Colors.white,
          currentIndex: paginaSel,
          type: BottomNavigationBarType.fixed,
          onTap: (index) => setState(() => paginaSel = index),
          items: [
            BottomNavigationBarItem(
                icon: Icon(MdiIcons.rabbit), label: 'Conejo'),
            BottomNavigationBarItem(icon: Icon(MdiIcons.dog), label: 'Perro'),
            BottomNavigationBarItem(icon: Icon(MdiIcons.cat), label: 'Gato')
          ]),
    );
  }

  void navegar(BuildContext context, StatelessWidget pagina) {
    MaterialPageRoute route = MaterialPageRoute(
      builder: (context) => pagina,
    );
    Navigator.push(context, route);
  }
}
