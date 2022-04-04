import 'package:flutter/material.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({Key? key}) : super(key: key);

  @override
  _TelaCadastroState createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  String _nomecompleto = "";
  String _email = "";
  String _usuario = "";
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
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    _nomecompleto = value;
                  });
                },
                decoration: InputDecoration(
                    // hintText: "Nome Completo",
                    labelText: "Nome Completo"),
              ),
              SizedBox(
                height: 15.0,
              ),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    _email = value;
                  });
                },
                decoration: InputDecoration(
                    // hintText: "E-mail",
                    labelText: "E-mail"),
              ),
              SizedBox(
                height: 15.0,
              ),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    _usuario = value;
                  });
                },
                decoration: InputDecoration(
                    // hintText: "Digite seu usuario",
                    labelText: "Digite seu usuario"),
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
                decoration: InputDecoration(
                    // hintText: "Digite sua senha",
                    labelText: "Digite sua senha"),
              ),
              SizedBox(
                height: 15.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/principal');
                  },
                  child: Text("Regitrar")),
              SizedBox(
                height: 15.00,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/landingpage');
                  },
                  child: Text("Voltar")),
              SizedBox(
                height: 15.00,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
