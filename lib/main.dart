import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('Dicee'),
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  _DicePageStage createState() => _DicePageStage();
}

class _DicePageStage extends State<DicePage> {
  int leftDiceNumber = 1;
  int rigthDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    changeDicesNumbers() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rigthDiceNumber = Random().nextInt(6) + 1;
    };
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    changeDicesNumbers();
                  });
                },
                child: Image.asset('images/dice$leftDiceNumber.png')),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    changeDicesNumbers();
                  });
                },
                child: Image.asset('images/dice$rigthDiceNumber.png')),
          )
        ],
      ),
    );
  }
}
