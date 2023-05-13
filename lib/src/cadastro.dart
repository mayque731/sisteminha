import 'package:flutter/material.dart';

void main() {
  runApp(Cadastro());
}

class Cadastro extends StatefulWidget {
  _Cadastro createState() => _Cadastro();
}

class _Cadastro extends State<Cadastro> {
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text(
              "Cadastro",
              style: TextStyle(
                fontFamily: "roboto",
                fontSize: 30,
              ),
            ),
          ),
        ));
  }
}
