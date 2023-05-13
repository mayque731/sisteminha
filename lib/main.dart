import 'package:flutter/material.dart';
import 'package:sisteminha/src/cadastro.dart';
import 'src/login.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      '/login': (context) => const Login(),
      '/cadastro': (context) => Cadastro()
    }, initialRoute: '/cadastro');
  }
}
