import 'package:JokenPo/pages/credito.dart';
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

  _pagionaCredito() {
    Navigator.push(context, MaterialPageRoute(builder: (_) => Credito()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(5, 1, 22, 1),
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
              padding: EdgeInsets.only(top: 75,),
              child: Text(
                "JOKENPO",
                style: TextStyle(
                  fontSize: 75,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => _comecarJogo(),
                    child: Image.asset("images/botaojogar.png", height: 150),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(bottom: 130),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => _pagionaCredito(),
                    child: Image.asset("images/botaocreditos.png", height: 130),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
