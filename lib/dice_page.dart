import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

int leftDice = 1;
int rightDice = 1;

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice Roller"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                    elevation: 10,
                    child: Image.asset('assets/images/dice-$leftDice.png')),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                    // color: Colors.,
                    elevation: 10,
                    child: Image.asset('assets/images/dice-$rightDice.png')),
              )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                    width: 150,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.cyan,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                        onPressed: () {
                          setState(() {
                            leftDice = Random().nextInt(6) + 1;
                            ;
                          });
                        },
                        child: Text('Player 1'))),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                    width: 150,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.cyan,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                        onPressed: () {
                          setState(() {
                            rightDice = Random().nextInt(6) + 1;
                          });
                        },
                        child: Text('Player 2'))),
              )
            ],
          )
        ],
      ),
    );
  }
}
