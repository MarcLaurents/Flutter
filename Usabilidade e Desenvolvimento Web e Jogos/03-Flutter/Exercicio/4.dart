import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Home(),
        debugShowCheckedModeBanner: false,
      ),
    );

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text('Página Inicial'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FlutterLogo(
              size: 200, // Para alterar o tamanho do logo.
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    height: 200, // Para manter o mesmo tamanho das imagens.
                    image: NetworkImage(
                      'https://picsum.photos/250?image=10',
                    ),
                  ),
                  Image(
                    height: 200,
                    image: NetworkImage(
                      'https://picsum.photos/250?image=25',
                    ),
                  ),
                  Image(
                    height: 200,
                    image: NetworkImage(
                      'https://picsum.photos/250?image=115',
                    ),
                  ),
                ],
              ),
            ),
          ],
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
