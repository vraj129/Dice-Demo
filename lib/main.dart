import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dice"),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var LeftDiceNumber = 1, RightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  diceclick();
                });
              },
              child: Image.asset('images/dice$LeftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    diceclick();
                  });
                },
                child: Image.asset('images/dice$RightDiceNumber.png')),
          ),
        ],
      ),
    );
  }

  void diceclick() {
    RightDiceNumber = Random().nextInt(6) + 1;
    LeftDiceNumber = Random().nextInt(6) + 1;
  }
}
