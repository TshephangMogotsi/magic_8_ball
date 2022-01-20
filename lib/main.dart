import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: const Text(
              "Ask me anything",
            ),
            backgroundColor: Colors.blue[900],
          ),
          body: const Magic8ballPage(),
        ),
      ),
    );

class Magic8ballPage extends StatefulWidget {
  const Magic8ballPage({Key? key}) : super(key: key);

  @override
  _Magic8ballPageState createState() => _Magic8ballPageState();
}

class _Magic8ballPageState extends State<Magic8ballPage> {
  int ballNumber = 1;
  void updateBall() {
    setState(() {
      ballNumber = Random().nextInt(3) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          updateBall();
        },
        child: Image.asset("images/ball$ballNumber.png"),
      ),
    );
  }
}
