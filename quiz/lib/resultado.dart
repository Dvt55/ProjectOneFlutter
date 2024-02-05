import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int acertadas;
  Resultado({Key ? key, required this.acertadas}) : super(key: key);

  //final int acertos;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Quiz - Football'),
          ),
          backgroundColor: Colors.green[400],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Resultado', style: TextStyle(fontSize: 20),),
                Text('Você acertou\n ${acertadas} de 10\n perguntas', style: TextStyle(fontSize: 20),),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Text(
                      'Jogar novamente',
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                    onPressed: () => Navigator.pushNamed(context, 'Quiz'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[500],
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

