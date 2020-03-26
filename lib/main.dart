import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Dicee'),
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
  int leftDiceNum = Random().nextInt(6) + 1;
  int rightDiceNum = Random().nextInt(6) + 1;

  void stateUpdate() {
    setState(() {
      leftDiceNum = Random().nextInt(6) + 1;
      rightDiceNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Spacer(
            flex: 2,
          ),
          Row(
            children: <Widget>[
              Spacer(
                flex: 2,
              ),
              Expanded(
                flex: 4,
                child: FlatButton(
                  onPressed: stateUpdate,
                  child: Image.asset('images/dice$leftDiceNum.png'),
                ),
              ),
              Spacer(),
              Expanded(
                flex: 4,
                child: FlatButton(
                  onPressed: stateUpdate,
                  child: Image.asset('images/dice$rightDiceNum.png'),
                ),
              ),
              Spacer(
                flex: 2,
              ),
            ],
          ),
          Spacer(
            flex: 1,
          ),
          Row(
            children: <Widget>[
              Spacer(
                flex: 2,
              ),
              Expanded(
                flex: 4,
                child: FlatButton(
                  onPressed: stateUpdate,
                  child: Image.asset('images/dice$leftDiceNum.png'),
                ),
              ),
              Spacer(),
              Expanded(
                flex: 4,
                child: FlatButton(
                  onPressed: stateUpdate,
                  child: Image.asset('images/dice$rightDiceNum.png'),
                ),
              ),
              Spacer(
                flex: 2,
              ),
            ],
          ),
          Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
