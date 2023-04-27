import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: PaginaInicial(),
    ),
  );
}

class PaginaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Text("Olá, Mundo!!!");
  }
}
