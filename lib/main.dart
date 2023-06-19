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

class DicePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        Expanded(child: Image(
          image: AssetImage(
            'images/dice1.png'
          ),
        ))
      ],
    );
  }
}