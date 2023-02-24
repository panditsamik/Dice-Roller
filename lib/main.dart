import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const dicee_app());
}

class dicee_app extends StatefulWidget {
  const dicee_app({Key? key}) : super(key: key);

  @override
  State<dicee_app> createState() => _dicee_appState();
}

var diceNumber1 = 1;
var diceNumber2 = 5;

void diceChange1() {
  diceNumber1 = Random().nextInt(6) + 1;
}

void diceChange2() {
  diceNumber2 = Random().nextInt(6) + 1;
}

class _dicee_appState extends State<dicee_app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Scaffold(
          backgroundColor: Colors.red.shade50,
          appBar: AppBar(
            backgroundColor: Colors.red.shade900,
            title: const Center(
              child: Text(
                'Dicee',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
            ),
          ),
          body: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 220.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        style: const ButtonStyle(),
                        onPressed: () {
                          setState(() {
                            diceChange1();
                          });
                        },
                        child: Image(
                          image: AssetImage('images/dice$diceNumber1.png'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        style: const ButtonStyle(),
                        onPressed: () {
                          setState(() {
                            diceChange2();
                          });
                        },
                        child: Image(
                          image: AssetImage('images/dice$diceNumber2.png'),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 200.0,
                ),
                Divider(
                  color: Colors.red.shade700,
                  height: 5.0,
                ),
                TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.redAccent.shade700),
                  ),
                  onPressed: () {
                    setState(() {
                      diceChange1();
                    });
                    setState(() {
                      diceChange2();
                    });
                  },
                  child: const Text('ROLL'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
