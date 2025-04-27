import 'package:JokenPo/pages/home.dart';
import 'package:flutter/material.dart';

class Credito extends StatefulWidget {
  const Credito({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<Credito> {
  static const primaryColor = Color.fromARGB(255, 255, 255, 255);
  String texto_de_credito = "Aplicação feita por: github.com/etmamate";
  _comecarJogo() {
    Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(5, 1, 22, 1),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Color.fromRGBO(5, 1, 22, 1),
      ),
      body: Padding(
        padding: EdgeInsets.only(bottom: 200, left: 50, right: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 115,
              width: 800,
              color: Color.fromRGBO(11, 2, 53, 0.573),
              child: Text(
                "Aplicação feita por: Mateus Cristo \n Github: github.com/etmamate\n Linkedin: https://www.linkedin.com/in/cristomateus\n Aplicação para fins de estudo.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
