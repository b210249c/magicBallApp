import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(BallPage());
}

class BallPage extends StatelessWidget {
  const BallPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(255, 170, 0, 0.7),
        appBar: AppBar(
          title: Center(child: Text('Ask Me Everything',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Fredoka One',
            color: Colors.white,
            letterSpacing: 2.5,
          ),)),
          backgroundColor: Color.fromRGBO(100, 120, 200, 1.0),
        ),
        body: SafeArea(child: Ball()),
    ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}
  int ballNumber = 0;
class _BallState extends State<Ball> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
                onPressed: () {
                  setState(() {
                    randomize();
                  });
                  print(ballNumber+1);
                },
                child: Image.asset('images/ball${ballNumber+1}.png')),
          )),
        ],
      ),
    );
  }
}

void randomize(){
  ballNumber = Random().nextInt(5);
}
