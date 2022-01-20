import 'package:flutter/material.dart';

void main() => runApp(
       MaterialApp(
        home: Scaffold(
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
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
    );
  }
}
