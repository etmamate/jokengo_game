import 'dart:math';

import 'package:JokenPo/pages/home.dart';
import 'package:flutter/material.dart';

class PlayMenu extends StatefulWidget {
  const PlayMenu({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<PlayMenu> {
  List options = ["pedra", "papel", "tesoura"];
  var points = 0;
  var maquina_points = 0;

  static const primaryColor = Color.fromARGB(255, 255, 255, 255);

  String _message = "Sua Jogada: ";
  final String _imagePath = "images/default.png";
  var imageApp = AssetImage("images/default.png");

  void _play(String choice) {
    int i = Random().nextInt(options.length);

    String randomChoice = options[i];
    //_imagePath = "images/$randomChoice.png";
    imageApp = AssetImage("images/$randomChoice.png");
    print("Jogada do jogador: $choice, Jogada da máquina: $randomChoice");
    if ((choice == "pedra" && randomChoice == "tesoura") ||
        (choice == "papel" && randomChoice == "pedra") ||
        (choice == "tesoura" && randomChoice == "papel")) {
      // Jogador venceu
      setState(() {
        _message = "Voce venceu!";
        points++;
      });
    } else if ((choice == "pedra" && randomChoice == "papel") ||
        (choice == "papel" && randomChoice == "tesoura") ||
        (choice == "tesoura" && randomChoice == "pedra")) {
      // Jogador Perdeu
      setState(() {
        _message = "Voce Perdeu!";
        maquina_points++;
      });
    } else {
      //Empate
      setState(() {
        _message = "Empatou!";
      });
    }
  }

  _comecarJogo() {
    Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(10, 0, 55, 1),
      // appBar: AppBar(
      //   title: Center(
      //     child: Text("JokenPo", style: TextStyle(color: Colors.white)),
      //   ),
      //   backgroundColor: Color.fromRGBO(10, 0, 55, 1),
      // ),
      body: Container(
        padding: EdgeInsets.only(bottom: 150),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 16),
              child: Text(
                "JOKENPO",
                style: TextStyle(
                  fontSize: 75,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => _comecarJogo(),
                  child: Image.asset("images/botaojogar.png", height: 175,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
