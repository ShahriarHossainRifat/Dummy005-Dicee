import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text('Dicee'),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void randomizeDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                splashFactory: NoSplash.splashFactory,
              ),
              child: Image.asset('images/dice$leftDiceNumber.png'),
              onPressed: () {
                randomizeDice();
              },
            ),
          ),
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                splashFactory: NoSplash.splashFactory,
              ),
              child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: () {
                randomizeDice();
              },
            ),
          ),
        ],
      ),
    );
  }
}
