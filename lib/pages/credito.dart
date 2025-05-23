import 'package:flutter/material.dart';

class Credito extends StatefulWidget {
  const Credito({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<Credito> {

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
        padding: EdgeInsets.only(bottom: 200, left: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 170,
              width: 900,
              color: Color.fromRGBO(11, 2, 53, 0.573),
              child: Text(
                "Aplicação feita por: Mateus Cristo \n Github: github.com/etmamate\nLinkedin:\nin/cristomateus\n\nAplicação para fins de estudo.",
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
