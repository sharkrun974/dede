import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dédé'),
          backgroundColor: Colors.red,
        ),
        body: DicePage2(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  int leftDiceNumber = Random().nextInt(6) + 1;
  int rightDiceNumber = Random().nextInt(6) + 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
                onPressed: () {
                  print("Vous avez appuyé sur l'image de gauche");
                },
                child: Image.asset("images/dice$leftDiceNumber.png")),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
                onPressed: () {
                  print("Vous avez appuyé sur l'image de droite");
                },
                child: Image.asset("images/dice$rightDiceNumber.png")),
          )),
        ],
      ),
    );
  }
}

class DicePage2 extends StatefulWidget {
  const DicePage2({Key? key}) : super(key: key);

  @override
  _DicePage2State createState() => _DicePage2State();
}

class _DicePage2State extends State<DicePage2> {
  int leftDiceNumber = Random().nextInt(6) + 1;
  int rightDiceNumber = Random().nextInt(6) + 1;

  diceChanged() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
                onPressed: () {
                  setState(() {
                    diceChanged();
                  });
                  print("Vous avez appuyé sur l'image de gauche");
                },
                child: Image.asset("images/dice$leftDiceNumber.png")),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
                onPressed: () {
                  setState(() {
                    diceChanged();
                  });
                  print("Vous avez appuyé sur l'image de droite");
                },
                child: Image.asset("images/dice$rightDiceNumber.png")),
          )),
        ],
      ),
    );
  }
}
