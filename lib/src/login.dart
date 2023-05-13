import 'package:flutter/material.dart';
import 'package:sisteminha/src/cadastro.dart';

void main() {
  runApp(Login());
}

class Login extends StatefulWidget {
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('Login'),
          ),
          body: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Nome de usuário',
                  ),
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
                  child: Text('Logar'),
                ),
                SizedBox(height: 24.0),
                Text("ou"),
                SizedBox(height: 24.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, '/cadastro'); // Ação do botão de login
                  },
                  child: Text('Cadastrar'),
                ),
              ],
            ),
          ),
        ));
  }
}
