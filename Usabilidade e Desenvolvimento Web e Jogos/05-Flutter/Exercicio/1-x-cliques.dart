import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  @override
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  TextEditingController num01Controller = TextEditingController();
  TextEditingController num02Controller = TextEditingController();
  int numeroVezes = 0;
  String mensagem = "Número de vezes botao pressionado: 0.\nEsse número é par";
  void cliqueDoBotao() {
    numeroVezes = numeroVezes + 1;
    mensagem =
        "Número de vezes botao pressionado: $numeroVezes.\nEsse número é ${numeroVezes / 2 == 0 ? "par" : "impar"}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Inicial'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              cliqueDoBotao();
              setState(cliqueDoBotao);
            },
            child: const Text(
              'Clique Aqui!',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Text(
            mensagem,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
