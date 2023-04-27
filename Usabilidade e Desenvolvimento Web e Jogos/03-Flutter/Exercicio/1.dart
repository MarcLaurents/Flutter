import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Home(),
        debugShowCheckedModeBanner: false,
      ),
    );

class Home extends StatelessWidget {
  final String nome = "Debora", dia = "quinta-feira";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text('Meu App'),
      ),
      body: Center(
        child: RichText(
          textAlign: TextAlign.center,
          textDirection: TextDirection
              .ltr, //Opcional, porque herda do widget pai que informar a direção do texto.

          text: TextSpan(
            text: "Olá, ",
            style: const TextStyle(
              color: Colors.green,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.white,
            ), //TextStyle.
            children: <TextSpan>[
              TextSpan(
                text: nome,
                style: const TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.red,
                  decorationStyle: TextDecorationStyle.double,
                ),
              ),
              const TextSpan(
                text: '! \nBom dia!',
              ),
              TextSpan(
                text: '\nHoje é $dia!',
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.yellow,
                ), //TextStyle.
              ),
              TextSpan(
                text:
                    'Flutter é uma tecnologia inovadora para desenvolvimento de aplicativos móveis, permitindo a criação de interfaces incríveis e alta performance para Android e iOS. ',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.black,
                ), //TextStyle.
              ),
              TextSpan(
                text:
                    'Com Flutter, é possível desenvolver aplicativos nativos em menos tempo e com menos esforço, proporcionando uma experiência única para os usuários. #flutter #desenvolvimentodeapp #tecnologia',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.white,
                ), //TextStyle.
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.blue[900],
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: 'Exemplo de botão',
        child: Icon(Icons.add),
      ),
    );
  }
}
