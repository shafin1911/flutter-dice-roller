import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.amber,
      body: GradientContainer(colors: [
        Color.fromARGB(255, 186, 205, 61),
        Color.fromARGB(255, 181, 198, 35),
      ]),
    ),
  ));
}
