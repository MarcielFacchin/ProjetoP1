import 'package:flutter/material.dart';
import 'package:projetop1/tela_cadastro.dart';
import 'package:projetop1/tela_login.dart';
import 'package:projetop1/tela_principal.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TelaLogin(),
      routes: <String, WidgetBuilder>{
        '/landingpage': (BuildContext context) => MyApp(),
        '/cadastro': (BuildContext context) => TelaCadastro(),
        '/principal': (BuildContext context) => TelaPrincipal(),
      },
    );
  }
}
