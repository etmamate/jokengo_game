import 'dart:math';

import 'package:JokenPo/pages/home.dart';
import 'package:flutter/material.dart';

class PlayMenu extends StatefulWidget {
  const PlayMenu({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<PlayMenu> {

  static const primaryColor = Color.fromARGB(255, 255, 255, 255);

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
                  child: Image.asset("images/botaojogar.png", height: 245,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
