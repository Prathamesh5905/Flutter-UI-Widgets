import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPaddingMarginDemo(),
    );
  }
}

class MyPaddingMarginDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding and Margin Demo'),
      ),
      body: MyContent(),
    );
  }
}

class MyContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Colors.blue,
          padding: EdgeInsets.all(16.0),
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Text(
            'Container with Padding and Margin',
            style: TextStyle(color: Colors.white, fontSize: 18.0),
          ),
        ),
        SizedBox(height: 20.0),
        Container(
          color: Colors.green,
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
          margin: EdgeInsets.only(top: 10.0),
          child: Text(
            'Another Container',
            style: TextStyle(color: Colors.white, fontSize: 16.0),
          ),
        ),
      ],
    );
  }
}
