import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dice'),
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
  Random random = Random();
  int rightDiceNum = 1;
  int leftDiceNum = 1;
  void diceChange()
  {
    rightDiceNum = random.nextInt(6)+1;
    leftDiceNum = random.nextInt(6)+1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextButton(
                  onPressed: (){
                    setState(() {
                      diceChange();
                    });
                  },
                  child: Image.asset('Image/dice$leftDiceNum.png')
              )
          ),
          Expanded(
            child: TextButton(
                onPressed:() {
                  setState(() {
                    diceChange();
                  });
                },
                child: Image.asset('Image/dice$rightDiceNum.png')
            ),
          ),
        ],
      ),
    );
  }
}

