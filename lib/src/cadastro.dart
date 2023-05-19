import 'package:flutter/material.dart';

void main() {
  runApp(Cadastro());
}

class Cadastro extends StatefulWidget {
  _Cadastro createState() => _Cadastro();
}

class _Cadastro extends State<Cadastro> {
  Widget build(BuildContext context) {
    //TextEditingController _controller = new TextEditingController();
    var nomeController = TextEditingController();
    var senhaController = TextEditingController();
    var emailController = TextEditingController();
    var tamanhosenha = senhaController.text.length;

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
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: senhaController,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                  ),
                  validator: (value) {
                    if (value!.length > 4) {
                      return 'senha fraca';
                    }
                  },
                  obscureText: true,
                ),
                SizedBox(height: 24.0),
                ElevatedButton(
                  onPressed: () {
                    var aviso = SnackBar(
                        content: const Text("Senha muito curta"),
                        action: SnackBarAction(
                            label: 'Desfazer', onPressed: () {}));

                    if (tamanhosenha < 8) {
                      ScaffoldMessenger.of(context).showSnackBar(aviso);
                    }
                  },
                  child: Text('Cadastrar'),
                ),
              ],
            ),
          ),
        ));
  }
}
