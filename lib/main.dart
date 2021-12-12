import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Center(child: Text('Dicee')),
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int ln = 2;
  int rn = 1;
  void change() {
    setState(() {
      rn = Random().nextInt(6) + 1;
      ln = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                child: Image(
                  image: AssetImage('images/dice$ln.png'),
                ),
                onPressed: () {
                  change();
                },
              ),
            ),
            Expanded(
              child: TextButton(
                child: Image(
                  image: AssetImage('images/dice$rn.png'),
                ),
                onPressed: () {
                  change();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
