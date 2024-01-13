import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyExpandedDemo(),
    );
  }
}

class MyExpandedDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded Demo'),
      ),
      body: MyExpandedContent(),
    );
  }
}

class MyExpandedContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.blue,
          height: 100.0,
          width: double.infinity,
          child: Center(
            child: Text(
              'Header',
              style: TextStyle(color: Colors.white, fontSize: 24.0),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.green,
            child: Center(
              child: Text(
                'Expanded Content',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
          ),
        ),
        Container(
          color: Colors.blue,
          height: 50.0,
          width: double.infinity,
          child: Center(
            child: Text(
              'Footer',
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
          ),
        ),
      ],
    );
  }
}
