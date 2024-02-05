import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/futebol_logo.jpg'),
              ElevatedButton(
                child: Text(
                  'Start',
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
                onPressed: () => Navigator.pushNamed(context, 'Quiz'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[500],
                  padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
