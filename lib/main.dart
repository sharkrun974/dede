import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dédé'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  int leftDiceNumber = 5;
  int rightDiceNumber = 4;
  @override
  Widget build(BuildContext context) {
    leftDiceNumber = 1;
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
