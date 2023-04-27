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
  String resp = "";
  String classificacao = "";
  imcCalc() {
    double peso = double.parse(num01Controller.text);
    double altura = double.parse(num02Controller.text);
    double imc = peso / (altura * altura);
    if(imc < 16) {
      classificacao = "Magreza grave.";
    } else if (imc < 18) {
      classificacao = "Magreza moderada.";
    } else if (imc < 18.6) {
      classificacao = "Magreza leve.";
    } else if (imc < 26) {
      classificacao = "Saudável.";
    } else if (imc < 30) {
      classificacao = "Sobrepeso.";
    } else if (imc < 35) {
      classificacao = "Obesidade Grau I";
    } else if (imc < 40) {
      classificacao = "Obesidade Grau II (severa)";
    } else if (imc > 39) {
      classificacao = "Obesidade Grau III (mórbida)";
    }
    resp = 'IMC: = $imc Classificação: $classificacao';
    return resp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Inicial'),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: TextField(
              controller: num01Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num01Controller.clear(),
                  icon: const Icon(Icons.clear),
                ),
                border: const OutlineInputBorder(),
                labelText: 'informe o peso em kg',
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: TextField(
              controller: num02Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num02Controller.clear(),
                  icon: const Icon(Icons.clear),
                ),
                border: const OutlineInputBorder(),
                labelText: 'informe a altura em metros',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print(imcCalc());
              setState(imcCalc);
            },
            child: const Text(
              'Calcular IMC',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Text(
            resp,
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
