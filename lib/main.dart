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
  List<int> dices = List.generate(4, (_) => Random().nextInt(6) + 1);

  void stateUpdate() {
    setState(() {
      dices = List.generate(4, (_) => Random().nextInt(6) + 1);
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
                  child: Image.asset('images/dice${dices[0]}.png'),
                ),
              ),
              Spacer(),
              Expanded(
                flex: 4,
                child: FlatButton(
                  onPressed: stateUpdate,
                  child: Image.asset('images/dice${dices[1]}.png'),
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
                  child: Image.asset('images/dice${dices[2]}.png'),
                ),
              ),
              Spacer(),
              Expanded(
                flex: 4,
                child: FlatButton(
                  onPressed: stateUpdate,
                  child: Image.asset('images/dice${dices[3]}.png'),
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
