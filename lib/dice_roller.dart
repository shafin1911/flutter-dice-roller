import 'dart:math';
import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceNumber = 2;

  void rollDice() {
    setState(() {
      currentDiceNumber = randomizer.nextInt(6) + 1;
    });
  }

  String getResult() {
    if (currentDiceNumber == 6) {
      return "You Won!";
    }
    return "Try again your luck with the dice!";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$currentDiceNumber.png",
          width: 200,
        ),
        const SizedBox(
          height: 18,
        ),
        OutlinedButton(
          onPressed: rollDice,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          child: const StyledText('Roll Dice'),
        ),
        const SizedBox(
          height: 18,
        ),
        StyledText(
          getResult(),
        ),
      ],
    );
  }
}
