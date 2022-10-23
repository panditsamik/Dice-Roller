import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white10,
        appBar: AppBar(
          title: const Center(
            child: Text("Dice Roller"),
          ),
          backgroundColor: Colors.blue.shade900,
        ),
        body: const SafeArea(
          child: DiceRoller(),
        ),
      ),
    ),
  );
}

class DiceRoller extends StatefulWidget {
  const DiceRoller({Key? key}) : super(key: key);

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {

  var diceNumber = 5;

  //Function to change the dice number/image
  void changeDice(){
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image(
              image: AssetImage('images/dice$diceNumber.png'),
              width: 300,
              height: 300,
            ),
          ),
          const SizedBox(
            height: 0.0,
            width: 350.0,
            child: Divider(
              color: Colors.white,
            ),
          ),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.blue.shade700),
            ),
            onPressed: () {
              changeDice();
            },
            child: const Text("Roll"),
          ),
        ],
      ),
    );
  }
}
