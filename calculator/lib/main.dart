import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String numero = '|';
  double primeiroNumber = 0.0;
  String sinal = '';

  void operacao(String valor) {
    switch (valor) {
      case '9':
      case '8':
      case '7':
      case '6':
      case '5':
      case '4':
      case '3':
      case '2':
      case '1':
      case '0':
      case '.':
        setState(() {
          numero += valor;
          if (numero.contains('.')) {
          } else {
            int numeroInt = int.parse(numero);
            numero = numeroInt.toString();
          }
        });
        break;

      case '+':
        sinal = valor;
        primeiroNumber = double.parse(numero);
        numero = '0';
        break;

      case '-':
        sinal = valor;
        primeiroNumber = double.parse(numero);
        numero = '0';
        break;

      case 'x':
        sinal = valor;
        primeiroNumber = double.parse(numero);
        numero = '0';
        break;

      case '/':
        sinal = valor;
        primeiroNumber = double.parse(numero);
        numero = '0';
        break;

      case '=':
        double result = 0.0;
        if (sinal == '+') {
          result = primeiroNumber + double.parse(numero);
        } else if (sinal == '-') {
          if (primeiroNumber > 0) {
            result = primeiroNumber - double.parse(numero);
          }
        } else if (sinal == 'x') {
          result = primeiroNumber * double.parse(numero);
        } else if (sinal == '/') {
          if (double.parse(numero) > primeiroNumber) {
            result = 0;
          } else {
            result = primeiroNumber / double.parse(numero);
          }
        }

        String resultString = result.toString();

        List<String> parts = resultString.split('.');

        if (int.parse(parts[1]) * 1 == 0) {
          setState(() {
            numero = int.parse(parts[0]).toString();
          });
        } else {
          setState(() {
            numero = result.toString();
          });
        }
        break;

      case 'AC':
        setState(() {
          numero = '0';
        });

      case '<x':
        String apaga = '';
        if ((numero.length - 1) < 1) {
          apaga = '0';
        } else {
          apaga = numero.substring(0, numero.length - 1);
        }

        setState(() {
          numero = apaga;
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Calculator',
              style: TextStyle(
                fontFamily: 'Helvetica',
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '$numero',
                  style: TextStyle(fontSize: 78),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => operacao('AC'),
                  child: Text(
                    'AC',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                Text(' '),
                Text(' '),
                GestureDetector(
                    onTap: () => operacao('<x'),
                    child: Image.asset(
                      'assets/images/backspace.png',
                      width: 48,
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    print('clicou');
                    operacao('7');
                  },
                  child: Text(
                    '7',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () => operacao('8'),
                  child: Text(
                    '8',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () => operacao('9'),
                  child: Text(
                    '9',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                    onTap: () => operacao('/'),
                    child: Image.asset(
                      'assets/images/divisao.png',
                      width: 48,
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => operacao('4'),
                  child: Text(
                    '4',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () => operacao('5'),
                  child: Text(
                    '5',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () => operacao('6'),
                  child: Text(
                    '6',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () => operacao('x'),
                  child: Text(
                    'x',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => operacao('1'),
                  child: Text(
                    '1',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () => operacao('2'),
                  child: Text(
                    '2',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () => operacao('3'),
                  child: Text(
                    '3',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () => operacao('-'),
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => operacao('0'),
                  child: Text(
                    '0',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () => operacao('.'),
                  child: Text(
                    '.',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () => operacao('='),
                  child: Text(
                    '=',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
                GestureDetector(
                  onTap: () => operacao('+'),
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
              ],
            ),
            Text(''),
          ],
        ),
      ),
    );
  }
}
