import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var spacing = SizedBox(
    height: 35,
  );

  String playerOne = "scissors";
  String result = "";

  String playerTwo = "paper";

  void play() {
    List<String> signs = ["rock", "paper", "scissors"];

    int playerOneNum = Random().nextInt(3);
    int playerOTwoNum = Random().nextInt(3);

    setState(() {
      playerOne = signs[playerOneNum];
      playerTwo = signs[playerOTwoNum];
    });

    if (playerOne == "rock" && playerTwo == "scissors") {
      result = "Player 1 wins!";
    } else if (playerOne == "scissors" && playerTwo == "paper") {
      result = "Player 1 wins!";
    } else if (playerOne == "paper" && playerTwo == "rock") {
      result = "Player 1 wins!";
    } else if (playerOne == playerTwo) {
      result = "TIE";
    } else
      "Player 2 wins!";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber.shade100,
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("ROCK PAPER SCISSOR"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset(
                      "assets/images/$playerOne.png",
                      width: 120,
                    ),
                    spacing,
                    Text("Player1")
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/$playerTwo.png",
                      width: 120,
                    ),
                    spacing,
                    Text("Player2")
                  ],
                )
              ],
            ),
            spacing,
            ElevatedButton(
              onPressed: () {
                play();
              },
              child: Text("Play"),
              style: ElevatedButton.styleFrom(
                  primary: Colors.orange, onPrimary: Colors.white),
            ),
            Text(result),
          ],
        ));
  }
}
