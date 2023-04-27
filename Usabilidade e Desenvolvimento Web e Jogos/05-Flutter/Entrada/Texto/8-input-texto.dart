import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  @override
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  TextEditingController nomeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Inicial'),
      ),
      body: Column(
        children: [
          const Text('Informe o seun nome:'),
          TextField(
            controller: nomeController,
            decoration: InputDecoration(
              icon: const Icon(Icons.chat),
              prefixIcon: const Icon(Icons.account_box),
              suffixIcon: IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () => nomeController.clear(),
              ),
              border: const OutlineInputBorder(),
              labelText: 'nome',
            ),
          ),
        ],
      ),
    );
  }
}
