import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStackDemo(),
    );
  }
}

class MyStackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Demo'),
      ),
      body: MyStackContent(),
    );
  }
}

class MyStackContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          color: Colors.blue,
          width: double.infinity,
          height: 200.0,
        ),
        Positioned(
          top: 50.0,
          child: Text(
            'Hello',
            style: TextStyle(fontSize: 30.0, color: Colors.white),
          ),
        ),
        Positioned(
          bottom: 50.0,
          child: ElevatedButton(
            onPressed: () {
              // Add your onPressed logic here
              print('Button pressed');
            },
            child: Text('Press Me'),
          ),
        ),
      ],
    );
  }
}
