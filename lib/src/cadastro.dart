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
          body: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Nome',
                  ),
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Senha',
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 24.0),
                ElevatedButton(
                  onPressed: () {
                    // Ação do botão de login
                  },
                  child: Text('Login'),
                ),
              ],
            ),
          ),
        ));
  }
}
