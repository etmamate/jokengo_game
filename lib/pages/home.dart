import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List options = ["pedra", "papel", "tesoura"];

  String _message = "Sua Jogada: ";
  String _imagePath = "images/default.png";

  void _play(String choice) {
    int i = Random().nextInt(options.length);

    String randomChoice = options[i];
    this._imagePath = "images/" + randomChoice + ".png";
    print(
      "Jogada do jogador: " + choice + ", Jogada da máquina: " + randomChoice,
    );
    if ((choice == "pedra" && randomChoice == "tesoura") ||
        (choice == "papel" && randomChoice == "pedra") ||
        (choice == "tesoura" && randomChoice == "papel")) {
      // Jogador venceu
      setState(() {
        this._message = "Voce venceu!";
      });
    } else if ((choice == "pedra" && randomChoice == "papel") ||
        (choice == "papel" && randomChoice == "tesoura") ||
        (choice == "tesoura" && randomChoice == "pedra")) {
      // Jogador Perdeu
      setState(() {
        this._message = "Voce Perdeu!";
      });
    } else {
      //Empate
      setState(() {
        this._message = "Empatou!";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(10, 0, 55, 1),
      appBar: AppBar(title: Text("JokenPo")),
      body: Container(
        padding: EdgeInsets.only(bottom: 150),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child: Text(
                "Jogada da Máquina!",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Image.asset(_imagePath, height: 150),
            Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child: Text(
                _message,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => _play("pedra"),
                  child: Image.asset("images/pedra.png", height: 120),
                ),
                GestureDetector(
                  onTap: () => _play("papel"),
                  child: Image.asset("images/papel.png", height: 120),
                ),
                GestureDetector(
                  onTap: () => _play("tesoura"),
                  child: Image.asset("images/tesoura.png", height: 120),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
