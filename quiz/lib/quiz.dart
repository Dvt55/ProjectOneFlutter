import 'package:flutter/material.dart';
import 'quiz_dados.dart';

int acertos = 0;

class Quiz extends StatefulWidget {
  Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int NumeroPergunta = 1;

  @override
  void initState() {
    super.initState();
    quiz.shuffle();
  }

  @override
  Widget build(BuildContext context) {

    void Result(int respostaNum) {
      setState(() {
        if (quiz[NumeroPergunta - 1]['alternativa_correta'] == respostaNum) {
          acertos++;
          print(acertos);
        }
        NumeroPergunta++;
      });
    }

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'Pergunta ${NumeroPergunta - 1} de 10',
                    style: TextStyle(fontSize: 20),
                  )),
              Text(
                'Pergunta: ' + quiz[NumeroPergunta - 1]['Pergunta'],
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text(
                    quiz[NumeroPergunta - 1]['resposta'][0],
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onPressed: () => {
                    if (NumeroPergunta > 10)
                      {Navigator.pushNamed(context, 'Resultado')}
                    else
                      {Result(0)},
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[500],
                    padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text(
                    quiz[NumeroPergunta - 1]['resposta'][1],
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onPressed: () => {
                    if (NumeroPergunta > 10)
                      {Navigator.pushNamed(context, 'Resultado')}
                    else
                      {Result(1)},
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[500],
                    padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text(
                    quiz[NumeroPergunta - 1]['resposta'][2],
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onPressed: () => {
                    if (NumeroPergunta > 10)
                      {Navigator.pushNamed(context, 'Resultado')}
                    else
                      {Result(2)},
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[500],
                    padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text(
                    quiz[NumeroPergunta - 1]['resposta'][3],
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onPressed: () => {
                    if (NumeroPergunta > 10)
                      {Navigator.pushNamed(context, 'Resultado')}
                    else
                      {Result(3)},
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[500],
                    padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
