import 'package:flutter/material.dart';
import 'package:projetop1/tela_login.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login",
      theme: ThemeData(
          // ignore: deprecated_member_use
          accentColor: Colors.black,
          primarySwatch: Colors.blue),
      home: TelaLogin(),
    );
  }
}
