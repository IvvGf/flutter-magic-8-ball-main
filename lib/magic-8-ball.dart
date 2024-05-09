import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  // Do not add a build method, add a createState method
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// private class
class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-2.png';
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1; // Value between 1 and 6
    });
    // print('Changing image...');
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Padding(
          padding:
              EdgeInsets.only(left: 20.0, top: 20.0, bottom: 50.0, right: 20.0),
          child: Text(
            "Magic-8-Ball reaches into the future, to find the answers to your questions. It knows what will be, and is willing to share this with you.Just think of a question that can be answered \"Yes\""
            " or \"No\""
            ", concentrate very, very hard, and click on the \"Obtain an answer\""
            " button. Then let Magic-8-Ball show you the way!",
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 300,
        ),
        const SizedBox(height: 20),
        TextButton(
            // onPressed: () {}),
            onPressed: rollDice,
            style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(top: 20,),
              foregroundColor: Colors.white,
              backgroundColor: Colors.deepPurpleAccent,
              textStyle: const TextStyle(
                fontSize: 28,
              ),
            ),
            child: const Text(
              'Obtain an answer',
              style: TextStyle(color: Colors.white),
            ))
      ],
    );
  }
}
