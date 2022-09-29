import 'package:flutter/material.dart';

class MagikarpPage extends StatelessWidget {
  // const MagikarpPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Magikarp')),
      body: Center(
        child: Column(
          children: [
            Text(
              'Magikarp',
              style: TextStyle(fontSize: 50),
            ),
            Image(
              image: AssetImage('assets/img/pokeball.png'),
            )
          ],
        ),
      ),
    );
  }
}
