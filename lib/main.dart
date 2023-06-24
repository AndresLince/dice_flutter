import 'package:flutter/material.dart';

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

class DicePage extends StatefulWidget{
  const DicePage({super.key});

  @override
  _DicePageStage createState() => _DicePageStage();
}

class _DicePageStage extends State<DicePage>{
  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 4;
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {
                  print('Left button got pressed!');
                },
                child: Image.asset('images/dice$leftDiceNumber.png')),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  print('Right button got pressed!');
                },
                child: Image.asset('images/dice1.png')),
          )
        ],
      ),
    );
  }
}
