import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        _message = "Venceu!";
        points++;
      });
    } else if ((choice == "pedra" && randomChoice == "papel") ||
        (choice == "papel" && randomChoice == "tesoura") ||
        (choice == "tesoura" && randomChoice == "pedra")) {
      // Jogador Perdeu
      setState(() {
        _message = "Perdeu!";
        maquina_points++;
      });
    } else {
      //Empate
      setState(() {
        _message = "Empatou!";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(10, 0, 55, 1),
      appBar: AppBar(
        title: Center(
          // child: Text("JokenPo", style: TextStyle(color: Colors.white),),
        ),
        backgroundColor: Color.fromRGBO(10, 0, 55, 1),
      ),
      body: Container(
        padding: EdgeInsets.only(bottom: 150),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Padding(
            //   padding: EdgeInsets.only(top: 32, bottom: 16),
            //   child: Text(
            //     "Jogada da Máquina!",
            //     style: TextStyle(
            //       fontSize: 20,
            //       fontWeight: FontWeight.bold,
            //       color: Colors.white,
            //     ),
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 16),
              child: Text(
                "Máquina: ${maquina_points.toString()}",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Image(image: imageApp, height: 150),
            Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              //Jogada do Jogador
              child: Text(
                _message,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32, bottom: 10),
              //Pontos do Jogador
              child: Text(
                "Seus Pontos: ${points.toString()}",
                style: TextStyle(
                  fontSize: 20,
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
