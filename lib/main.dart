import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      )
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 5;
  @override
  Widget build(BuildContext context) {

    var leftDiceNumber = 5;
    var rightDiceNumber = 3;

    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                  onPressed: () {
                    print('press Left button');
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png'))
          ),
          Expanded(
              child: TextButton(
                onPressed: () {
                  print('Press Right button');
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              )
          ),
        ],
      ),
    );
  }
}





