import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MySizedBoxDemo(),
    );
  }
}

class MySizedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SizedBox Demo'),
      ),
      body: Center(
        child: SizedBox(
          width: 150.0,
          height: 150.0,
          child: Container(
            color: Colors.blue,
            child: Center(
              child: Text(
                'Hello',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
