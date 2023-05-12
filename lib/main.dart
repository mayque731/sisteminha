import 'package:flutter/material.dart';
import 'src/home.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {'/home': (context) => const Home()});
  }
}
