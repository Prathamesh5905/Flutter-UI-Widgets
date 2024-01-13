import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Center Widget Example'),
        ),
        body: Center(
          child: Container(
            // Your centered content goes here
            width: 200.0,
            height: 200.0,
            color: Colors.blue,
            child: Text(
              'Centered Text',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
