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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: null,
                child: Image.asset('images/dice1.png')),
          ),
          Expanded(
            child: TextButton(
                onPressed: null,
                child: Image.asset('images/dice1.png')),
          )
        ],
      ),
    );
  }
}
