import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora Básica',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Calculadora(),
    );
  }
}

class Calculadora extends StatefulWidget {
  @override
  _CalculadoraState createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  String displayText = '0';
  double num1 = 0;
  double num2 = 0;
  String result = '0';
  String operator = '';

  void buttonPressed(String buttonText) {
    if (buttonText == 'C') {
      displayText = '0';
      num1 = 0;
      num2 = 0;
      result = '0';
      operator = '';
    } else if (buttonText == '+' ||
        buttonText == '-' ||
        buttonText == '×' ||
        buttonText == '÷') {
      num1 = double.parse(displayText);
      operator = buttonText;
      result = '';
    } else if (buttonText == '=') {
      num2 = double.parse(displayText);
      if (operator == '+') {
        result = (num1 + num2).toString();
      } else if (operator == '-') {
        result = (num1 - num2).toString();
      } else if (operator == '×') {
        result = (num1 * num2).toString();
      } else if (operator == '÷') {
        result = (num1 / num2).toString();
      }
      num1 = 0;
      num2 = 0;
      operator = '';
    } else {
      result = double.parse(displayText + buttonText).toString();
    }

    setState(() {
      displayText = result;
    });
  }

  Widget buildButton(String buttonText) {
    return Expanded(
      child: OutlinedButton(
        onPressed: () => buttonPressed(buttonText),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Text(buttonText, style: TextStyle(fontSize: 20.0)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora Básica'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
            child: Text(displayText, style: TextStyle(fontSize: 48.0)),
          ),
          Expanded(
            child: Divider(),
          ),
          Column(
            children: [
              Row(children: [
                buildButton('7'),
                buildButton('8'),
                buildButton('9'),
                buildButton('÷')
              ]),
              Row(children: [
                buildButton('4'),
                buildButton('5'),
                buildButton('6'),
                buildButton('×')
              ]),
              Row(children: [
                buildButton('1'),
                buildButton('2'),
                buildButton('3'),
                buildButton('-')
              ]),
              Row(children: [
                buildButton('.'),
                buildButton('0'),
                buildButton('C'),
                buildButton('+')
              ]),
              Row(children: [buildButton('=')]),
            ],
          )
        ],
      ),
    );
  }
}
