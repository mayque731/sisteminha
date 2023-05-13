import 'package:flutter/material.dart';

void main() {
  runApp(Cadastro());
}

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {'/home': (context) => const Cadastro()});
  }
}
