import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  @override
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  TextEditingController idadeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Inicial'),
      ),
      body: Column(
        children: [
          const Text('Informe sua idade:'),
          TextField(
            controller: idadeController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () => idadeController.clear(),
                icon: const Icon(Icons.clear),
              ),
              border: const OutlineInputBorder(),
              labelText: 'idade',
            ),
          ),
        ],
      ),
    );
  }
}
