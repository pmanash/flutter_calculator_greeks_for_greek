import 'package:flutter/material.dart';
import 'package:flutter_calculator_greeks_for_greek/buttons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> buttons = [
    'C',
    'DEL',
    '%',
    '/',
    '9',
    '8',
    '7',
    'x',
    '6',
    '5',
    '4',
    '-',
    '3',
    '2',
    '1',
    '+',
    '0',
    '.',
    'ANS',
    '=',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Column(children: [
        Expanded(child: Container()),
        Expanded(
            flex: 2,
            child: Container(
                child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
              itemCount: buttons.length,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return MyButtons(
                      buttonText: buttons[index],
                      color: Colors.green,
                      textColor: Colors.white);
                } else if (index == 1) {
                  return MyButtons(
                    buttonText: buttons[index],
                    color: Colors.red,
                      textColor: Colors.white,
                  );
                }
                return MyButtons(
                  buttonText: buttons[index],
                  color: isOperator(buttons[index])
                      ? Colors.deepPurple
                      : Colors.deepPurple[50],
                  textColor: isOperator(buttons[index])
                      ? Colors.white
                      : Colors.deepPurple,
                );
              },
            ))),
      ]),
    );
  }

  bool isOperator(String x) {
    if (x == '%' || x == '/' || x == 'x' || x == '-' || x == '+' || x == '=') {
      return true;
    }
    return false;
  }
}
