import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Ball(),
    ),
  );
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Ask Me Anything'),
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: GestureDetector(
          onTap: () {
            print('Fui clicado');
            setState(() {
              ballNumber = Random().nextInt(5) + 1; // Gere um número aleatório de 1 a 5
            });
            print('ball$ballNumber');
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}

