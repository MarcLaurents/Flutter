import 'package:flutter/material.dart';

void main() {
  runApp(
    const Center(
      child: Text(
        'Olá, Mundo!',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          color: Colors.white,
        ),
      ), //Text.
    ), //Center.
  );
}
