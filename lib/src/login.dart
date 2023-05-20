import 'package:flutter/material.dart';
import './cadastro.dart';

void main() {
  runApp(Login());
}

class Login extends StatefulWidget {
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  var userController = TextEditingController();
  var senhaController = TextEditingController();
  @override
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
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: userController,
                  decoration: InputDecoration(
                    labelText: 'Nome de usuário',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Informe um nome';
                    } else if (value == 'kassio' || value == 'mayque') {
                      return value;
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: senhaController,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Informe uma senha';
                    } else if (value == 'senha123') {
                      return value;
                    }
                    return null;
                  },
                  obscureText: true,
                ),
                SizedBox(height: 24.0),
                ElevatedButton(
                  onPressed: () {
                    // Ação do botão de login
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushNamed(context, '/cadastro');
                    }
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
        ),
      ),
    );
  }
}
