import 'package:flutter/material.dart';
import 'homepage.dart';
import 'quiz.dart';
import 'resultado.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key ? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        'Quiz': (context) => Quiz(),
        'Resultado': (contexto) => Resultado(acertadas: acertos,),
      },
    );
  }
}
