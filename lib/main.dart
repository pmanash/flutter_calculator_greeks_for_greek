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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Column(children: [
        Expanded(child: Container()),
        Expanded(
            flex: 2,
            child: Container(
              child: Center(
                  child: MyButtons(
                    color: Colors.deepPurple,
                    buttonText: '0',
                    textColor: Colors.white,
              )),
            )),
      ]),
    );
  }
}
