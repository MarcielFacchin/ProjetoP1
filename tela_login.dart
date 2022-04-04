import 'package:flutter/material.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({Key? key}) : super(key: key);

  @override
  _TelaLoginState createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  String _email = "";
  String _senha = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Bem vindo a Open Unifeob"),
              Image.asset(
                "images/Logo Open Unifeob.png",
              ),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    _email = value;
                  });
                },
                decoration: InputDecoration(
                    // hintText: "E-Mail",
                    labelText: "E-Mail"),
              ),
              SizedBox(
                height: 15.0,
              ),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    _senha = value;
                  });
                },
                obscureText: true,
                decoration: InputDecoration(labelText: "Senha"),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/principal');
                  },
                  child: Text("Login")),
              SizedBox(
                height: 15.00,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/cadastro');
                  },
                  child: Text("Cadastre-se")),
              SizedBox(
                height: 10.0,
              ),
              TextButton(onPressed: () {}, child: Text("Recuperar sua Senha")),
              Text(_email),
              Text(_senha),
            ],
          ),
        ),
      ),
    );
  }
}
