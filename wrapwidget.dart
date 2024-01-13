import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyWrapDemo(),
    );
  }
}

class MyWrapDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap Demo'),
      ),
      body: MyWrapContent(),
    );
  }
}

class MyWrapContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0, // spacing between the children
      runSpacing: 8.0, // spacing between the lines
      children: List.generate(
        10,
        (index) => Chip(
          label: Text('Item $index'),
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
